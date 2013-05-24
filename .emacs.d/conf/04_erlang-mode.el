(add-to-list 'load-path 
             (car (file-expand-wildcards "/usr/local/lib/erlang/lib/tools-*/emacs")))

(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))

(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl$" . erlang-mode))

(require 'distel)
(distel-setup)

(defvar inferior-erlang-prompt-timeout t)
(add-hook 'erlang-mode-hook
		  (lambda ()
			(setq inferior-erlang-machine-options '("-name" "emacs@127.0.0.1"))
			(setq erl-nodename-cache 'emacs@127.0.0.1)
			(erlang-shell)
			(distel-init)
			(other-window 1)
			(previous-buffer)
			))

;; tell distel to default to that node
