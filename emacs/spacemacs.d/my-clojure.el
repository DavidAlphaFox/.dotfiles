;;; my-clojure.el -*- lexical-binding: t; -*-
(when my/HAS-CLOJURE
  (require 'lsp-mode)
  (require 'lsp-clojure)
  (add-hook 'clojure-mode-hook #'lsp-deferred)
  (add-hook 'clojurescript-mode-hook #'lsp-deferred)
  (add-hook 'clojurec-mode-hook #'lsp-deferred)
  (setq
   ;; gc-cons-threshold (* 100 1024 1024)
   ;; read-process-output-max (* 1024 1024)
    ;;company-idle-delay 1.0
    ;;company-minimum-prefix-length 2
    lsp-lens-enable t
    lsp-signature-auto-activate nil
     ;lsp-enable-indentation nil ; uncomment to use cider indentation instead of lsp
     ;lsp-enable-completion-at-point nil ; uncomment to use cider completion instead of lsp
    ))
