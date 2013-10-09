
(when (<= emacs-major-version 22)
  (when (and (not (file-exists-p "~/.emacs.d/elpa/archives/-pkg.el"))
			 (file-exists-p "~/.emacs.d/elpa/archives"))
	(save-excursion
	  (set-buffer (generate-new-buffer "-pkg.el"))
	  (write-file "~/.emacs.d/elpa/archives/-pkg.el")
	  (kill-buffer (current-buffer))
	  )
	)
  (setq load-path (append '("~/.emacs.d/elisp/package22") load-path))
)

(when (and (< emacs-major-version 24) (> emacs-major-version 22))
  (setq load-path (append '("~/.emacs.d/elisp/package23") load-path))
  )

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)


(setq load-path
      (append '("~/.emacs.d/elisp/config"
				"~/.emacs.d/elpa/*"
				"~/.emacs.d/distel"
				"~/.emacs.d/esense"
				"~/.emacs.d/auto-complete-distel"
                "~/.emacs.d/themes/solarized-emacs" 
                "~/.emacs.d/themes/zenburn-emacs"
				"~/.emacs.d/themes/molokai-theme"
		) load-path))

(when (>= emacs-major-version 24)
  (setq custom-theme-load-path (append '(
                                         "~/.emacs.d/themes/solarized-emacs" 
                                         "~/.emacs.d/themes/zenburn-emacs"
										 "~/.emacs.d/themes/molokai-theme")
                                       custom-theme-load-path)))
;;(load "config-loader")
;;(my-run-directories "~/.emacs.d/conf")
(cond 
 ((>= emacs-major-version 24) (ignore-errors (load "config-loader")))
 (t (condition-case nil (load "config-loader") nil))
 )

(eval-after-load "config-loader" '(my-run-directories "~/.emacs.d/conf"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("a7e47993e8887d433c83ac082c954bfe566bcfb1fcf0165c3e52fc9ccd37cf9b" "36a309985a0f9ed1a0c3a69625802f87dee940767c9e200b89cdebdb737e5b29" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
