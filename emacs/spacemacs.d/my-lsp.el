;;; my-lsp.el -*- lexical-binding: t; -*-

;;lsp
(setq lsp-keymap-prefix "M-; l")
(require 'lsp-mode)
(setq lsp-inlay-hint-enable t)
(setq lsp-ui-doc-position 'at-point)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-show-with-mouse t)
(setq lsp-groovy-server-file "~/.emacs.d/.cache/lsp/groovy/groovy-language-server-all.jar")
