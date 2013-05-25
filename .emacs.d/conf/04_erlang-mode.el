(add-to-list 'load-path 
             (car (file-expand-wildcards "/usr/local/lib/erlang/lib/tools-*/emacs")))

(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))

(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl$" . erlang-mode))

(require 'distel)

(defvar inferior-erlang-prompt-timeout t)
(setq inferior-erlang-machine-options '("-name" "emacs@127.0.0.1"))
(setq erl-nodename-cache 'emacs@127.0.0.1)
(defun erlang-shell-distel ()
  (interactive)
  (erlang-shell)
  (distel-setup)
)
;; tell distel to default to that node
