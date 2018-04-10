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

(eval-after-load "auto-complete"
'(progn
  (add-to-list 'ac-modes 'erlang-mode)
  (add-to-list 'ac-modes 'erlang-shell-mode)
  (add-hook 'erlang-mode-hook 'ac-distel-setup)
  (add-hook 'erlang-shell-mode-hook 'ac-distel-setup)
  ))

(setq indent-tabs-mode nil)
;; tell distel to default to that node
