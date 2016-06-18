;;; clojure-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "clojure-mode" "../../../../.emacs.d/elpa/clojure-mode-20151209.731/clojure-mode.el"
;;;;;;  "ac53e81539aa504def92d81698881197")
;;; Generated autoloads from ../../../../.emacs.d/elpa/clojure-mode-20151209.731/clojure-mode.el

(autoload 'clojure-mode "clojure-mode" "\
Major mode for editing Clojure code.

\\{clojure-mode-map}

\(fn)" t nil)

(autoload 'clojurescript-mode "clojure-mode" "\
Major mode for editing ClojureScript code.

\\{clojurescript-mode-map}

\(fn)" t nil)

(autoload 'clojurec-mode "clojure-mode" "\
Major mode for editing ClojureC code.

\\{clojurec-mode-map}

\(fn)" t nil)

(autoload 'clojurex-mode "clojure-mode" "\
Major mode for editing ClojureX code.

\\{clojurex-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(clj\\|dtm\\|edn\\)\\'" . clojure-mode))

(add-to-list 'auto-mode-alist '("\\.cljc\\'" . clojurec-mode))

(add-to-list 'auto-mode-alist '("\\.cljx\\'" . clojurex-mode))

(add-to-list 'auto-mode-alist '("\\.cljs\\'" . clojurescript-mode))

(add-to-list 'auto-mode-alist '("\\(?:build\\|profile\\)\\.boot\\'" . clojure-mode))

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/clojure-mode-20151209.731/clojure-mode-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/clojure-mode-20151209.731/clojure-mode.el")
;;;;;;  (22122 5162 50014 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; clojure-mode-autoloads.el ends here
