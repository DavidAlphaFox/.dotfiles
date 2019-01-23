(load-file "~/.spacemacs.d/config/slime-repl-ansi-color.el")

(progn
  (set-language-environment "UTF-8")
  (set-terminal-coding-system 'utf-8)
  (set-keyboard-coding-system 'utf-8)
  (set-buffer-file-coding-system 'utf-8)
  (setq default-buffer-file-coding-system 'utf-8)
  (set-default-coding-systems 'utf-8)
  (prefer-coding-system 'utf-8))
(setq indent-tabs-mode t) 
(setq default-tab-width 2)
(setq tab-width 2)
(setq indent-line-function 'insert-tab)

(progn
  (setq-default fill-column 80)
  (setq text-mode-hook 'turn-on-auto-fill)
  (setq default-major-mode 'text-mode)
  (auto-fill-mode)
)

(setq inferior-lisp-program "ros -Q run")
(require 'slime)
(slime-repl-ansi-on)
