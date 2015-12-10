(when (file-exists-p "/usr/local/bin/sbcl")
  (setq inferior-lisp-program "/usr/local/bin/sbcl") 
  )

(when (file-exists-p "/usr/bin/sbcl")
  (setq inferior-lisp-program "/usr/bin/sbcl") 
  )

(add-to-list 'load-path "~/emacs.d/elpa/slime-*/")

(require 'slime-autoloads)
(slime-setup '(slime-fancy))
(add-to-list 'auto-mode-alist '("\\.lisp$" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.asd$" . lisp-mode))
(setq slime-net-coding-system 'utf-8-unix)

(require 'ac-slime-autoloads)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

