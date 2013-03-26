(add-to-list 'load-path 
             (car (file-expand-wildcards "/usr/local/lib/erlang/lib/tools-*/emacs")))

(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))

(require 'distel)
(distel-setup)
