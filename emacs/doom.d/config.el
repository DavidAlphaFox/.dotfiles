;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
(cond
 ((eq system-type 'darwin)
  (setq doom-font (font-spec :family "monospace" :size 14)))
 (t (setq doom-font (font-spec :family "monospace" :size 16))))
(setq display-line-numbers-type t)

(setq auto-save-default nil)
(require 'doom-themes)

(require 'exec-path-from-shell)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
;;(load-theme 'doom-one t)
;;(doom-themes-visual-bell-config)
(if (display-graphic-p)
    (load-theme 'doom-dracula t)
  (load-theme 'doom-molokai t))

(doom-themes-visual-bell-config)
;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
;;(global-prettify-symbols-mode 1)


(require 'lsp-mode)
(require 'lsp-ui)

(setq lsp-ui-sideline-enable nil)
(setq lsp-ui-doc-enable t)
(setq lsp-log-io nil)
(progn
  (when (file-exists-p "~/.local/bin/erlang_ls/_build/default/bin/erlang_ls")
  (progn
    (setq lsp-erlang-server-path "~/.local/bin/erlang_ls/_build/default/bin/erlang_ls")
    (add-hook 'erlang-mode-hook #'lsp))))

(progn
  (set-language-environment "UTF-8")
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (prefer-coding-system 'utf-8))



(progn
  (setq geiser-active-implementations '(chez))
  (cond
   ((eq system-type 'darwin)
    (progn
      (setq scheme-program-name "chez")
      (setq geiser-chez-binary "/usr/local/bin/chez")))
   ((eq system-type 'berkeley-unix)
    (progn
      (setq scheme-program-name "chez-scheme")
      (setq geiser-chez-binary "/usr/local/bin/chez-scheme")))))


(progn
  (setq-default fill-column 80)
  (setq text-mode-hook 'turn-on-auto-fill)
  (setq default-major-mode 'text-mode)
  (auto-fill-mode)
)

(setq indent-tabs-mode nil)
(setq default-tab-width 2)
(setq tab-width 2)
;;(setq indent-line-function 'insert-tab)
(defun my-setup-indent (n)
  ;; java/c/c++
  (setq c-basic-offset n)
  ;; web development
  (setq coffee-tab-width n) ; coffeescript
  (setq javascript-indent-level n) ; javascript-mode
  (setq js-indent-level n) ; js-mode
  (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq css-indent-offset n) ; css-mode
  (add-hook 'erlang-mode-hook
        (function (lambda ()
                    (setq indent-tabs-mode nil)
                    (setq erlang-indent-level n)
                    (setq erlang-indent-guard n)
                    (setq erlang-argument-indent n)))))
(my-setup-indent 2)
(exec-path-from-shell-initialize)

(cond
 ((eq system-type 'darwin)
  (progn
   (setq anaconda-mode-localhost-address "localhost")
   (setq python-shell-interpreter "/usr/local/bin/python3"))))
