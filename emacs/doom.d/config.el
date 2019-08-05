;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-
(when (file-exists-p "/usr/local/bin/sbcl")
  (setq inferior-lisp-program "/usr/local/bin/sbcl"))
(when (file-exists-p "/usr/bin/sbcl")
  (setq inferior-lisp-program "/usr/bin/sbcl"))

(require 'doom-themes)
;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
(load-theme 'doom-one t)
(doom-themes-visual-bell-config)

;; Enable custom neotree theme (all-the-icons must be installed!)
(doom-themes-neotree-config)
;; or for treemacs users
(doom-themes-treemacs-config)

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)
