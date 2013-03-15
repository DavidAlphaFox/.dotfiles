(setq load-path
      (append '("~/.emacs.d/elisp"
                "~/.emacs.d/elisp/js2-mode"
                "~/.emacs.d/elisp/auto-complete"
		) load-path))

(load "config-loader")

(my-run-directories "~/.emacs.d/conf")


