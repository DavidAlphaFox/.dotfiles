;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
(setq user-full-name "David Gao"
  user-mail-address "david.alpha.fox@gmail.com")
(cond
 ((eq system-type 'darwin)
  (setq doom-font (font-spec :family "monospace" :size 14)))
 (t (setq doom-font (font-spec :family "monospace" :size 16))))
(setq display-line-numbers-type t)

(setq auto-save-default nil)


(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
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

(progn
  (set-language-environment "UTF-8")
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (prefer-coding-system 'utf-8))


(progn
  (let ((erlang-lsp-file (concat (getenv "HOME")
                                 "/.local/bin/erlang_ls/_build/default/bin/erlang_ls")))
  (when (file-exists-p erlang-lsp-file)
    (progn
      (setq lsp-erlang-server-path erlang-lsp-file)
      (require 'lsp-mode)
      (require 'lsp-ui)
      (require 'yasnippet)
      (yas-global-mode t)
      (setq lsp-log-io nil)
      (setq lsp-ui-sideline t)
      (setq lsp-ui-doc-enable t)
      (add-hook 'erlang-mode-hook #'lsp-deferred)))))
(setq utop-command "opam config exec -- utop -emacs")

(progn
  (setq geiser-active-implementations '(guile))
  (cond
   ((eq system-type 'darwin)
    (progn
      (setq scheme-program-name "guile")
      (setq geiser-guile-binary "/usr/local/bin/guile")))
   ((eq system-type 'berkeley-unix)
    (progn
      (setq scheme-program-name "guile")
      (setq geiser-guile-binary "/usr/local/bin/guile")))))


(progn
  (setq-default fill-column 80)
  (setq text-mode-hook 'turn-on-auto-fill)
  (setq default-major-mode 'text-mode)
  (auto-fill-mode))

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
    (lambda ()
      (setq indent-tabs-mode nil)
      (setq erlang-indent-level n)
      (setq erlang-indent-guard n)
      (setq erlang-argument-indent n))))

(my-setup-indent 2)

(cond
 ((eq system-type 'darwin)
  (progn
   (setq anaconda-mode-localhost-address "localhost")
   (setq python-shell-interpreter "/usr/local/bin/python3"))))


;;(global-undo-fu-session-mode)
;;(setq desktop-save-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#f2e5bc" "#9d0006" "#79740e" "#b57614" "#076678" "#b16286" "#427b58" "#282828"])
 '(custom-safe-themes
   (quote
    ("e074be1c799b509f52870ee596a5977b519f6d269455b84ed998666cf6fc802a" "632694fd8a835e85bcc8b7bb5c1df1a0164689bc6009864faed38a9142b97057" "9b01a258b57067426cc3c8155330b0381ae0d8dd41d5345b5eddac69f40d409b" default)))
 '(fci-rule-color "#504945")
 '(jdee-db-active-breakpoint-face-colors (cons "#f0f0f0" "#a89984"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f0f0f0" "#79740e"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f0f0f0" "#928374"))
 '(objed-cursor-color "#9d0006")
 '(pdf-view-midnight-colors (cons "#282828" "#fbf1c7"))
 '(rustic-ansi-faces
   ["#fbf1c7" "#9d0006" "#79740e" "#b57614" "#076678" "#b16286" "#427b58" "#282828"])
 '(vc-annotate-background "#fbf1c7")
 '(vc-annotate-color-map
   (list
    (cons 20 "#79740e")
    (cons 40 "#8d7410")
    (cons 60 "#a17512")
    (cons 80 "#b57614")
    (cons 100 "#b3620e")
    (cons 120 "#b14e08")
    (cons 140 "#af3a03")
    (cons 160 "#af472e")
    (cons 180 "#b0545a")
    (cons 200 "#b16286")
    (cons 220 "#aa415b")
    (cons 240 "#a32030")
    (cons 260 "#9d0006")
    (cons 280 "#9a2021")
    (cons 300 "#97413c")
    (cons 320 "#946258")
    (cons 340 "#504945")
    (cons 360 "#504945")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(if (display-graphic-p)
    (load-theme 'doom-nord-light t)
    (load-theme 'doom-acario-light t))
