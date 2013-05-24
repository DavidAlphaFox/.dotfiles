(require 'yasnippet)
(yas-global-mode 1) 

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/auto-complete/ac-dict")
(global-auto-complete-mode t)
(ac-config-default)

(require 'ac-slime)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)
(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-repl-mode))

(require 'auto-complete-distel)
(add-to-list 'ac-modes 'erlang-mode)
(add-to-list 'ac-modes 'erlang-shell-mode)
(defun ac-distel-setup ()
   (setq ac-sources '(ac-source-distel)))
(add-hook 'erlang-mode-hook 'ac-distel-setup)
(add-hook 'erlang-shell-mode-hook 'ac-distel-setup)
