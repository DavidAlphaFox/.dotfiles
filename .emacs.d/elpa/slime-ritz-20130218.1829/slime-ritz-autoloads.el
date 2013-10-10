;;; slime-ritz-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (slime-ritz-bind-repl-keys slime-ritz-bind-keys
;;;;;;  slime-clojure-repl-setup slime-clojure-connection-setup slime-ritz-init
;;;;;;  slime-ritz-repl-connected slime-ritz-connected slime-connection-is-clojure-p)
;;;;;;  "slime-ritz" "slime-ritz.el" (21077 40316 0 0))
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

;;;### (autoloads nil nil ("slime-ritz-pkg.el") (21077 40316 216287
;;;;;;  0))

;;;***

(provide 'slime-ritz-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; slime-ritz-autoloads.el ends here
