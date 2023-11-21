;;; my-themes.el -*- lexical-binding: t; -*-

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;; (setq doom-theme 'doom-one)
(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold nil    ; if nil, bold is universally disabled
      doom-themes-enable-italic nil) ; if nil, italics is universally disabled
(if (display-graphic-p)
	(load-theme 'doom-solarized-light t)
	(load-theme 'leuven t))
	;;(load-theme 'adwaita t))
	;;(load-theme 'leuven t))

(doom-themes-visual-bell-config)

