(require 'dominating-file)
(require 'rebar-config)

(defun rebar-generate-current (project-dir)
  (interactive (list 
    (let* ((project-dir (ebm-find-rebar-top))
           (prompt (if project-dir
                       (format "Project dir (default %s): " project-dir)
                     "Project dir: ")))
           (intern (read-string prompt nil nil project-dir)))))
  (warn "project dir: %s" project-dir)
  (rebar-generate-project project-dir))
  
(defun rebar-generate-project (project-dir)
  (set (make-local-variable 'compile-command) (format "make -f %sMakefile" project-dir))
  (call-interactively 'compile))

