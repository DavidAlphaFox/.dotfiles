(require 'ac-slime)
(add-hook 'clojure-mode-hook 'set-up-slime-ac)
(add-hook 'slime-mode-hook 'set-up-slime-ac)
(add-hook 'slime-repl-mode-hook 'set-up-slime-ac)

(eval-after-load "auto-complete"
  '(add-to-list 'ac-modes 'slime-mode)
  '(add-to-list 'ac-modes 'slime-repl-mode)
  '(add-to-list 'ac-modes 'clojure-mode))
