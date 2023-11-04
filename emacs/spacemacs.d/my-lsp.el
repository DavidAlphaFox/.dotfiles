;;; my-lsp.el -*- lexical-binding: t; -*-

;;lsp
(setq lsp-keymap-prefix "M-; l")
(require 'lsp-mode)
(setq lsp-ui-doc-position 'at-point)
(setq lsp-ui-doc-show-with-mouse nil)
(setq lsp-groovy-server-file "~/.emacs.d/.cache/lsp/groovy/groovy-language-server-all.jar")
