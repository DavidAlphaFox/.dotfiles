(setq default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(setq default-buffer-file-coding-system 'utf-8-unix)
(setq buffer-file-coding-system 'utf-8-unix)
(setq language-environment "UTF-8")
(setq terminal-coding-system 'utf-8-unix)
(setq keyboard-coding-system 'utf-8-unix)
(setq coding-system-for-write 'utf-8-unix)

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
(with-eval-after-load 'helm-posframe
  (helm-posframe-disable))
