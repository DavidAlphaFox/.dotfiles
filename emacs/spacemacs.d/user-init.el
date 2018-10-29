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
(when (file-exists-p "/usr/local/bin/sbcl")
  (setq inferior-lisp-program "/usr/local/bin/sbcl") 
  )

(when (file-exists-p "/usr/bin/sbcl")
  (setq inferior-lisp-program "/usr/bin/sbcl") 
  )

(setq slime-contribs '(slime-fancy))

(require 'slime)
		;;(neotree-toggle)
