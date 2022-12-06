(require 'lsp-mode)
(require 'lsp-racket)
(require 'racket-mode)
(require 'racket-eldoc)

(add-hook 'racket-mode-hook #'racket-xp-mode)

(when (display-graphic-p)
  (add-hook 'racket-mode-hook #'lsp-deferred))

(add-hook 'racket-xp-mode-hook
  (lambda ()
    (setq eldoc-documentation-function 'racket-xp-eldoc-function)
    (cl-pushnew 'racket flycheck-disabled-checkers)))

(add-hook 'racket-repl-mode-hook
  (lambda ()
     (setq-local eldoc-documentation-function #'racket-repl-eldoc-function)))

