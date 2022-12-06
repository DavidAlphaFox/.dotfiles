;;; my-themes.el -*- lexical-binding: t; -*-


(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold nil    ; if nil, bold is universally disabled
      doom-themes-enable-italic nil) ; if nil, italics is universally disabled
(if (display-graphic-p)
	(load-theme 'doom-solarized-light t)
	(load-theme 'adwaita t))
	;;(load-theme 'leuven t))

(doom-themes-visual-bell-config)

