;;; my-lisp.el -*- lexical-binding: t; -*-
(require 'geiser)
(require 'geiser-mode)
(require 'geiser-repl)
;;(require 'sly)
(require 'company)

(let ((n 2))
  (setq lisp-indent-offset n))

(add-hook 'geiser-mode-hook #'company-mode)
(add-hook 'geiser-repl-mode-hook #'company-mode)
(add-hook 'sly-mrepl-mode-hook #'company-mode)
(setq sly-mrepl-shortcut (kbd "C-,"))
