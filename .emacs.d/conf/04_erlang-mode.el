(add-to-list 'load-path "/usr/local/lib/erlang/lib/tools-2.6.8/emacs")
(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))
