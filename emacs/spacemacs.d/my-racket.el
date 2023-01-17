(require 'lsp-mode)
(require 'lsp-racket)
(require 'racket-mode)
(require 'racket-eldoc)
(require 'company)

(add-hook 'racket-mode-hook #'company-mode)
(add-hook 'racket-mode-hook
  (lambda ()
    (when (display-graphic-p)
      (lsp-deferred))))

(add-hook 'racket-repl-mode-hook
  (lambda ()
     (setq-local eldoc-documentation-function #'racket-repl-eldoc-function)))
