(require 'clojure-mode)
(setq auto-mode-alist (cons '("\\.cljs$" . clojure-mode) auto-mode-alist))


(require 'yasnippet)
(require 'clojure-snippets)
(yas-global-mode 1)
(add-to-list 'yas-snippet-dirs "~/.emacs.d/snippets")
(yas-load-directory "~/.emacs.d/snippets")


(global-set-key (kbd "C-c C-s") 'clojure-toggle-keyword-string)

(defun reload-current-clj-ns ()
  (interactive)
  (let ((current-point (point)))
	(goto-char (point-min))
	(let ((ns-idx (re-search-forward clojure-namespace-name-regex nil t)))
	  (when ns-idx
		(goto-char ns-idx)
		(let ((sym (symbol-at-point)))
		  (message (format "Loading %s ..." sym))
		  (lisp-eval-string (format "(require '%s :reload)" sym))
		  (lisp-eval-string (format "(in-ns '%s)" sym)))))
	(goto-char current-point)))
