(setq inferior-lisp-program "/usr/local/bin/sbcl") ; your Lisp system
(require 'slime-autoloads)
(slime-setup '(slime-fancy))
(add-to-list 'auto-mode-alist '("\\.lisp?$" . lisp-mode))
;;(setq slime-lisp-implementations
;;      '((sbcl ("sbcl")
;;              :init (lambda (port-file _)
;;                      (format "(ql:quickload :swank)\n (swank:start-server %S)\n" port-file)))))
