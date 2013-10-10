(when (file-exists-p "/usr/local/lib/erlang")
  (setq erlang-root-dir "/usr/local/lib/erlang")
  (setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))
)

(when (file-exists-p "/usr/lib/erlang")
  (setq erlang-root-dir "/usr/lib/erlang")
  (setq exec-path (cons "/usr/lib/erlang/bin" exec-path))
)

(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl$" . erlang-mode))

(require 'esense-start)
(setq esense-indexer-program "~/.emacs.d/elisp/esense/esense.sh")
(require 'distel)

(defvar inferior-erlang-prompt-timeout t)
(setq inferior-erlang-machine-options '("-name" "emacs@127.0.0.1"))
(setq erl-nodename-cache 'emacs@127.0.0.1)

(eval-after-load "auto-complete"
'(progn
  (add-to-list 'ac-modes 'erlang-mode)
  (add-to-list 'ac-modes 'erlang-shell-mode)
  (add-hook 'erlang-mode-hook 'ac-distel-setup)
  (add-hook 'erlang-shell-mode-hook 'ac-distel-setup)
  ))

(defun ac-distel-setup()
  (eval-after-load "auto-complete-distel"
	  '(setq ac-sources
			 (append '(ac-source-distel) 
					ac-sources)))
  )

(defun distel-erlang-shell ()
  (interactive)
  (load "auto-complete-distel")
  (require 'auto-complete-distel)
  (erlang-shell)
  (distel-setup)
  )
;; tell distel to default to that node
