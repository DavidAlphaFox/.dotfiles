;;; ~/.doom.d/config.el 
;;; -*- lexical-binding: t; -*-
(setq user-full-name "David Gao"
  user-mail-address "david.alpha.fox@gmail.com")
(require 'cl-lib)
(if (display-graphic-p)
  (cond
    (IS-MAC  (setq doom-font (font-spec :family "JetBrainsMono Nerd Font"  :size 14)))
    (IS-LINUX (setq doom-font (font-spec :name "Terminus (TTF)" :size 19)))
    (IS-BSD (setq doom-font (font-spec :name "Terminus (TTF)" :size 19)))
    (t (setq doom-font (font-spec :family "monospace" :size 16)))))


(setq display-line-numbers-type t)

(setq auto-save-default nil)


(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold nil    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
;;(load-theme 'doom-one t)
;;(doom-themes-visual-bell-config)
;;(if (display-graphic-p)
;;    (load-theme 'doom-dracula t)
;; (load-theme 'doom-molokai t))

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)


(doom-themes-visual-bell-config)
;; Enable custom neotree theme (all-the-icons must be installed!)
;;(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)
(setq treemacs-position 'right)
;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
;;(global-prettify-symbols-mode 1)

(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)


(setq-default fill-column 80)
(setq text-mode-hook 'turn-on-auto-fill)
(setq default-major-mode 'text-mode)
(auto-fill-mode)

;;(setq default-tab-width 2)
;;(setq tab-width 2)
;;(setq indent-line-function 'insert-tab)
(defun my-setup-indent (n)
  ;; java/c/c++
  (setq c-basic-offset n)
  (setq lisp-indent-offset n)
  ;; web development
  (setq coffee-tab-width n) ; coffeescript
  (setq javascript-indent-level n) ; javascript-mode
  (setq js-indent-level n) ; js-mode
  (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq css-indent-offset n) ; css-mode
  (setq erlang-indent-level n)
  (setq erlang-indent-guard n)
  (setq erlang-argument-indent n))

(setq-default indent-tabs-mode nil)
(my-setup-indent 2)

(defun find-files (locations)
 (cl-remove-if-not 
  (lambda (f) (file-exists-p f))
  locations))

(let ((erlang-lsp-files 
       (find-files
        (list
          "/usr/local/bin/erlang_ls"
          "/usr/bin/erlang_ls"))))
  (when (not (null erlang-lsp-files))
    (setq lsp-erlang-server-path (car erlang-lsp-files))
    (require 'lsp-mode)
    (require 'lsp-ui)
    (require 'yasnippet)
    (yas-global-mode t)
    (setq lsp-log-io nil)
    (setq lsp-ui-sideline t)
    (add-hook 'erlang-mode-hook #'lsp-deferred)))

(setq utop-command "opam config exec -- utop -emacs")
;; 延迟lsp的启动
;; 需要lsp-install-server安装对应的lsp server
;; 需要安装对应的python包
(add-hook 'python-mode-hook
  (lambda ()
    (setq python-indent-offset 4)
    (setq tab-width 4)
    (lsp-deferred)))

(setq scheme-program-name "racket")

(let ((luas
      (find-files 
       (list
           "/usr/local/bin/lua54"
           "/usr/local/bin/lua53"
           "/usr/local/bin/lua52"))))
  (when (not (null luas))
    (setq lua-default-application
      (file-name-base (car luas)))))

(when (or IS-MAC IS-LINUX)
  (add-hook 'clojure-mode-hook 'lsp)
  (add-hook 'clojurescript-mode-hook 'lsp)
  (add-hook 'clojurec-mode-hook 'lsp)
  (setq
   gc-cons-threshold (* 100 1024 1024)
   read-process-output-max (* 1024 1024)
   treemacs-space-between-root-nodes nil
   company-idle-delay 0.0
   company-minimum-prefix-length 1
   lsp-lens-enable t
   lsp-signature-auto-activate nil
   ; lsp-enable-indentation nil ; uncomment to use cider indentation instead of lsp
   ; lsp-enable-completion-at-point nil ; uncomment to use cider completion instead of lsp
  ))



;;(global-undo-fu-session-mode)
;;(setq desktop-save-mode t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(if (display-graphic-p)
;;    (load-theme 'doom-nord-light t)
;;    (load-theme 'doom-gruvbox-light t))
(load-theme 'doom-gruvbox-light t)
