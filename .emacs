(when (< emacs-major-version 23)
  (setq load-path (append '("~/.emacs.d/elisp/ruby-mode")
						  load-path)))
						 
(setq load-path
      (append '("~/.emacs.d/elisp"
                "~/.emacs.d/elisp/js2-mode"
                "~/.emacs.d/elisp/yaml-mode"
				"~/.emacs.d/elisp/jade-mode"
				"~/.emacs.d/elisp/yasnippet"
                "~/.emacs.d/elisp/auto-complete"
				"~/.emacs.d/elisp/flymake"
                "~/.emacs.d/elisp/slime"
				"~/.emacs.d/elisp/ac-slime"
                "~/.emacs.d/elisp/distel/elisp"
				"~/.emacs.d/elisp/haskell-mode"
				"~/.emacs.d/elisp/ocaml-mode"
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


