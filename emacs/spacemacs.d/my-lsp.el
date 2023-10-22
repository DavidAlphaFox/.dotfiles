;;; my-lsp.el -*- lexical-binding: t; -*-

;;lsp
(require 'lsp-mode)
(setq lsp-ui-doc-position 'at-point)
(setq lsp-ui-doc-show-with-mouse nil)
(define-key lsp-mode-map (kbd "C-c C-l") lsp-command-map)
