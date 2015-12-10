;;; slime-ritz-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "slime-ritz" "slime-ritz.el" (22121 34736 0
;;;;;;  0))
;;; Generated autoloads from slime-ritz.el

(autoload 'slime-connection-is-clojure-p "slime-ritz" "\


\(fn)" nil nil)

(autoload 'slime-ritz-connected "slime-ritz" "\


\(fn)" nil nil)

(autoload 'slime-ritz-repl-connected "slime-ritz" "\


\(fn)" nil nil)

(autoload 'slime-ritz-init "slime-ritz" "\
Initialise slime-ritz.  Creates clojure specific slime hooks.

\(fn)" nil nil)

(autoload 'slime-clojure-connection-setup "slime-ritz" "\


\(fn)" nil nil)

(autoload 'slime-clojure-repl-setup "slime-ritz" "\


\(fn)" nil nil)

(autoload 'slime-ritz-bind-keys "slime-ritz" "\


\(fn)" nil nil)

(autoload 'slime-ritz-bind-repl-keys "slime-ritz" "\


\(fn)" nil nil)

(eval-after-load "slime" '(slime-ritz-init))

;;;***

;;;### (autoloads nil nil ("slime-ritz-pkg.el") (22121 34736 406995
;;;;;;  0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; slime-ritz-autoloads.el ends here
