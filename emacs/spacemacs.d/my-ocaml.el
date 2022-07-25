;;; my-ocaml.el -*- lexical-binding: t; -*-
(setq utop-command "opam config exec -- utop -emacs")
(require 'lsp-mode)
(require 'lsp-ocaml)
(add-hook 'tuareg-mode-hook #'lsp-deferred)
