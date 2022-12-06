(require 'lsp-mode)
(require 'lsp-racket)
(require 'racket-mode)
(require 'racket-eldoc)

(add-hook 'racket-mode-hook #'racket-xp-mode)

(add-hook 'racket-xp-mode-hook
  (lambda ()
    (when (display-graphic-p)
      (lsp-deferred))
    (setq eldoc-documentation-function 'racket-xp-eldoc-function)
    (cl-pushnew 'racket flycheck-disabled-checkers)))

(add-hook 'racket-repl-mode-hook
  (lambda ()
     (setq-local eldoc-documentation-function #'racket-repl-eldoc-function)))

