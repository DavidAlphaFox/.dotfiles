(autoload 'd-mode  "d-mode" nil t)
(require 'd-mode)
(add-to-list 'auto-mode-alist '("\\.d?$" . d-mode))
