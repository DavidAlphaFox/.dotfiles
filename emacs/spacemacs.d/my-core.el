
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


(defun my/file! ()
  "Return the emacs lisp file this function is called from."
  (cond (load-in-progress load-file-name)
        ((bound-and-true-p byte-compile-current-file))
        ((stringp (car-safe current-load-list))
         (car current-load-list))
        (buffer-file-name)
        ((error "Cannot get this file-path"))))

(defun my/dir! ()
  "Returns the directory of the emacs lisp file this function is called from."
  (when-let (path (my/file!))
    (directory-file-name (file-name-directory path))))

(defmacro my/load! (filename &optional path noerror)
  "Load a file relative to the current executing file (`load-file-name').
FILENAME is either a file path string or a form that should evaluate to such a
string at run time. PATH is where to look for the file (a string representing a
directory path). If omitted, the lookup is relative to either `load-file-name',
`byte-compile-current-file' or `buffer-file-name' (checked in that order).
If NOERROR is non-nil, don't throw an error if the file doesn't exist."
  (let* ((path (or path (my/dir!)
                   (error "Could not detect path to look for '%s' in" filename)))
         (file (if path
                   `(expand-file-name ,filename ,path)
                 filename)))
         `(let (file-name-handler-alist)
            (load ,file ,noerror 'nomessage))))


