(require 'dominating-file)
(require 'rebar-config)
(defun ebm-compile-prj ()
  (interactive)
  (set (make-local-variable 'compile-command) (format "make -f %sMakefile" (ebm-find-rebar-top)))
  (call-interactively 'compile))