(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

;; This is useful for working with camel-case tokens, like names of
;; Java classes (e.g. JavaClassName)
(add-hook 'clojure-mode-hook 'subword-mode)


(eval-after-load 'nrepl
  '(progn
     (define-key clojure-mode-map (kbd "C-c M-b") 'nrepl-eval-buffer)
	 (define-key clojure-mode-map (kbd "C-c M-r") 'nrepl-eval-region)
	 ))
