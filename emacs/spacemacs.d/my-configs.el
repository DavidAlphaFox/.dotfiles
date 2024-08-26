;;; my-configs.el -*- lexical-binding: t; -*
(when (or my/IS-BSD (> 28 emacs-major-version))
  (setq max-lisp-eval-depth 1000))
;; language coding
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "David Gao"
      user-mail-address "david.alpha.fox@gmail.com")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; column
(setq-default fill-column 80)
(auto-fill-mode)


;; tab
(setq-default indent-tabs-mode nil)
;; undo tree
(with-eval-after-load 'undo-tree
  (setq undo-tree-auto-save-history nil))
(defvar helm-ff-edit-marked-files-fn #'helm-marked-files-in-dired)
