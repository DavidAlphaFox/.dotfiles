;;; my-ocaml.el -*- lexical-binding: t; -*-
(require 'tuareg)
(require 'utop)
(require 'merlin)
;;(require 'company)
(with-eval-after-load 'merlin
  ;; Disable Merlin's own error checking
  (setq merlin-error-after-save nil)

  ;; Enable Flycheck checker
  (flycheck-ocaml-setup))

(require 'lsp-mode)
(require 'lsp-ocaml)
(add-hook 'tuareg-mode-hook #'lsp-deferred)
(add-hook 'tuareg-mode-hook #'utop-minor-mode)
(add-hook 'tuareg-mode-hook #'merlin-mode)

;;(add-to-list 'company-backends 'merlin-company-backend)

(setq utop-command "opam config exec -- utop -emacs")
