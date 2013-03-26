(add-to-list 'load-path 
             (car (file-expand-wildcards "/usr/local/lib/erlang/lib/tools-*/emacs")))

(setq erlang-root-dir "/usr/local/lib/erlang")
(setq exec-path (cons "/usr/local/lib/erlang/bin" exec-path))

(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))

(require 'distel)
(distel-setup)

;; prevent annoying hang-on-compile
(defvar inferior-erlang-prompt-timeout t)
;;(interactive)
;; default node name to emacs@localhost
(setq inferior-erlang-machine-options '("-name" "emacs@127.0.0.1"))

;; tell distel to default to that node
(setq erl-nodename-cache 'emacs@127.0.0.1)
     ;; (make-symbol
      ;; (concat
       ;; "emacs@"
        ;; Mac OS X uses "name.local" instead of "name", this should work
        ;; pretty much anywhere without having to muck with NetInfo
        ;; ... but I only tested it on Mac OS X.
       ;; (car (split-string (shell-command-to-string "hostname"))))))
