(require 'dominating-file)

(defun rebar-generate-current (project-dir)
  (interactive (list 
    (let* ((project-dir (rebar-find-top-dir))
           (prompt (if project-dir
                       (format "Project dir (default %s): " project-dir)
                     "Project dir: ")))
           (intern (read-string prompt nil nil project-dir)))))
  (rebar-generate-project project-dir))
  
(defun rebar-generate-project (project-dir)
  (progn
	(set 'prev-default-directory (format "%s" default-directory))
    (set 'default-directory (format "%s" project-dir))
    (set (make-local-variable 'compile-command) (format "make -f %sMakefile" project-dir))
    (call-interactively 'compile)
	(set 'default-directory (format "%s" prev-default-directory))))

(defun rebar-find-top-dir-recr (dirname)
      (let* ((project-dir (locate-dominating-file dirname "rebar.config")))
        (if project-dir
            (let* ((parent-dir (file-name-directory (directory-file-name project-dir)))
                   (top-project-dir (if (and parent-dir (not (string= parent-dir "/")))
                                       (rebar-find-top-dir-recr parent-dir)
                                      nil)))
              (if top-project-dir
                  top-project-dir
                project-dir))
          project-dir)))

(defun rebar-find-top-dir  ()
  (let* ((dirname (file-name-directory (buffer-file-name)))
         (project-dir (rebar-find-top-dir-recr dirname)))
   (expand-file-name project-dir)))

(defun dirs-in-dir (dir name)
  "Find all directories of name in directory."
  (unless (file-directory-p dir)
    (error "Not a directory `%s'" dir))

  (let ((dir (directory-file-name dir))
        (dirs '())
        (files (directory-files dir nil nil t)))
    (dolist (file files)
      (unless (member file '("." ".."))
        (let ((absolute-path (expand-file-name (concat dir "/" file))))
          (when (file-directory-p absolute-path)
            (if (string= file name)
                (setq dirs (append (cons absolute-path
                                         (dirs-in-dir absolute-path name))
                                   dirs))
              (setq dirs (append
                          (dirs-in-dir absolute-path name)
                          dirs)))))))
    dirs))


(provide 'rebar-project)
