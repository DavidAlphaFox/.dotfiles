;;; my-lisp.el -*- lexical-binding: t; -*-
(require 'geiser)
(require 'company)

(let ((n 2))
  (setq lisp-indent-offset n))

(add-hook geiser-mode-hook #'company-mode)
