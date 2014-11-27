;;; latest-clojure-libraries-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (latest-clojure-libraries-update-dependency-version
;;;;;;  latest-clojure-libraries-insert-dependency) "latest-clojure-libraries"
;;;;;;  "latest-clojure-libraries.el" (21620 43364 0 0))
;;; Generated autoloads from latest-clojure-libraries.el

(autoload 'latest-clojure-libraries-insert-dependency "latest-clojure-libraries" "\
Insert dependency for PACKAGE and optionally INJECT it into nrepl classpath.

\(fn PACKAGE INJECT)" t nil)

(autoload 'latest-clojure-libraries-update-dependency-version "latest-clojure-libraries" "\
Update dependency version number for package at point. Point
must be at the name of the package, not the version number.

\(fn INJECT)" t nil)

;;;***

;;;### (autoloads nil nil ("latest-clojure-libraries-pkg.el") (21620
;;;;;;  43364 840941 0))

;;;***

(provide 'latest-clojure-libraries-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; latest-clojure-libraries-autoloads.el ends here
