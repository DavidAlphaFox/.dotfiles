;;; my-lisp.el -*- lexical-binding: t; -*-
(require 'geiserr)
(require 'company)

(let ((n 2))
  (setq lisp-indent-offset n))

(add-hook geiser-mode-hook #'company-mode)
