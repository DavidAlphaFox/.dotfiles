;;; my-ocaml.el -*- lexical-binding: t; -*-
(with-eval-after-load 'merlin
  ;; Disable Merlin's own error checking
  (setq merlin-error-after-save nil)

  ;; Enable Flycheck checker
  (flycheck-ocaml-setup))

(setq utop-command "opam config exec -- utop -emacs")
(require 'lsp-mode)
(require 'lsp-ocaml)
(add-hook 'tuareg-mode-hook #'lsp-deferred)
