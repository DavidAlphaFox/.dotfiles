(autoload 'lua-mode "lua-mode" "Mode for editing Lua source files")
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))

(add-to-list 'load-path "/usr/local/lib/erlang/lib/tools-2.6.8/emacs")
(require 'erlang-start)

(add-to-list 'auto-mode-alist '("\\.erl?$" . erlang-mode))
(add-to-list 'auto-mode-alist '("\\.hrl?$" . erlang-mode))

(setq load-path
      (append '("~/.emacs.d/elisp"
                "~/.emacs.d/elisp/auto-complete"
		) load-path))

(load "config-loader")

(my-run-directories "~/.emacs.d/conf")


