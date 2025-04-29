(require 'seq)

(defun my/build-paths (paths files)
  (flatten-list
   (seq-map
    (lambda (path)
      (seq-map (lambda (file)
                 (expand-file-name file path))
               files))
    paths)))

(defun my/find-files (locations)
  (seq-filter #'file-exists-p locations))


(defun my/load (path &optional noerror)
  "Load PATH and handle any Doom errors that arise from it.
   If NOERROR, don't throw an error if PATH doesn't exist."
  (condition-case-unless-debug e
      (load path noerror 'nomessage)
    (error
     (setq path (locate-file path load-path (get-load-suffixes)))
     (signal 'error (list path e)))))

(defmacro my/file! ()
  "Return the file of the file this macro was called."
  (or
   ;; REVIEW: Use `macroexp-file-name' once 27 support is dropped.
   (let ((file (car (last current-load-list))))
     (if (stringp file) file))
   (bound-and-true-p byte-compile-current-file)
   load-file-name
   buffer-file-name   ; for `eval'
   (error "my/file!: cannot deduce the current file path")))

(defmacro my/dir! ()
  "Return the directory of the file this macro was called."
  (file-name-directory (macroexpand '(my/file!))))


(defmacro my/load! (filename &optional path noerror)
  "Load a file relative to the current executing file (`load-file-name').
FILENAME is either a file path string or a form that should evaluate to such a
string at run time. PATH is where to look for the file (a string representing a
directory path). If omitted, the lookup is relative to either `load-file-name',
`byte-compile-current-file' or `buffer-file-name' (checked in that order).
If NOERROR is non-nil, don't throw an error if the file doesn't exist."
  `(my/load (file-name-concat ,(or path `(my/dir!)) ,filename) ,noerror))
