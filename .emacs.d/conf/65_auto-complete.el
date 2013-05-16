(require 'yasnippet)
(yas-global-mode 1) 

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/auto-complete/ac-dict")
(global-auto-complete-mode t)
(ac-config-default)
