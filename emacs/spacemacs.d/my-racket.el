(require 'lsp-mode)
(require 'lsp-racket)
(require 'racket-mode)
(require 'racket-eldoc)

(add-hook 'racket-mode-hook #'racket-xp-mode)

;;(add-hook 'racket-mode-local-vars-hook
;;  (lambda ()
;;(setq eldoc-documentation-function 'racket-xp-eldoc-function)
;;    (setq-local eldoc-documentation-function #'ignore)
;;    (setq-local lsp-eldoc-enable-hover nil)
;;    (lsp-deferred)) 'append)

(add-hook 'racket-xp-mode-hook
  (lambda ()
    (setq eldoc-documentation-function 'racket-xp-eldoc-function)
    (cl-pushnew 'racket flycheck-disabled-checkers)))

(when (display-graphic-p)
  (add-hook 'racket-xp-mode-hook #'lsp-deferred ))

(add-hook 'racket-repl-mode-hook
  (lambda ()
     (setq-local eldoc-documentation-function #'racket-repl-eldoc-function)))
;;(add-hook 'racket-mode-local-vars-hook #'racket-xp-mode)
