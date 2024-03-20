;;; my-ocaml.el -*- lexical-binding: t; -*-
(require 'tuareg)
(require 'utop)
(require 'merlin)
(require 'shackle)
(require 'company)
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
(add-hook 'utop-mode-hook #'utop-minor-mode)
(add-hook 'utop-mode-hook #'company-mode) 
(add-hook 'utop-mode-hook (lambda ()
  (define-key utop-mode-map (kbd "C-j") nil)
  (define-key utop-mode-map (kbd "C-k") nil)
  (define-key utop-mode-map (kbd "C-c c-k") 'utop-history-goto-next)
  (define-key utop-mode-map (kbd "C-c C-j") 'utop-history-goto-prev)))
(setq utop-command "utop -emacs")
;;(add-to-list 'company-backends 'merlin-company-backend)
;;(setq shackle-rules '(("^\\*utop\\*" :regexp t :align t :size 0.4)))
