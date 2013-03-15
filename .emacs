(setq load-path
      (append '("~/.emacs.d/elisp"
                "~/.emacs.d/elisp/js2-mode"
                "~/.emacs.d/elisp/yaml-mode"
                "~/.emacs.d/elisp/php-mode"
                "~/.emacs.d/elisp/auto-complete"
                "~/.emacs.d/themes/solarized-emacs" 
		) load-path))

(setq custom-theme-load-path (append '(
                          "~/.emacs.d/themes/solarized-emacs" 
                          "~/.emacs.d/themes/zenburn-emacs")
                        custom-theme-load-path))

(load "config-loader")
(my-run-directories "~/.emacs.d/conf")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

