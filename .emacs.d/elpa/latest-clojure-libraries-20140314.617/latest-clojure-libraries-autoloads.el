;;; latest-clojure-libraries-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "latest-clojure-libraries" "latest-clojure-libraries.el"
;;;;;;  (22121 34741 0 0))
;;; Generated autoloads from latest-clojure-libraries.el

(autoload 'latest-clojure-libraries-insert-dependency "latest-clojure-libraries" "\
Insert dependency for PACKAGE and optionally INJECT it into nrepl classpath.

\(fn PACKAGE INJECT)" t nil)

(autoload 'latest-clojure-libraries-update-dependency-version "latest-clojure-libraries" "\
Update dependency version number for package at point. Point
must be at the name of the package, not the version number.

\(fn INJECT)" t nil)

;;;***

;;;### (autoloads nil nil ("latest-clojure-libraries-pkg.el") (22121
;;;;;;  34741 830533 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; latest-clojure-libraries-autoloads.el ends here
