;;; ghc-imported-from-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ghc-imported-from" "ghc-imported-from.el"
;;;;;;  (22121 34692 0 0))
;;; Generated autoloads from ghc-imported-from.el

(autoload 'ghc-imported-from-haddock-for-symbol-at-point "ghc-imported-from" "\
Look up the Haddock for the symbol under point in a Haskell
buffer using the ghc-imported-from command-line utility.

The standard function `browse-url' is used to open the Haddock
documentation URL. Customize `browse-url-browser-function' to
change this.

If ghc-imported-from is not on your $PATH, customize
`ghc-imported-from-command-name' 

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("ghc-imported-from-pkg.el") (22121 34692
;;;;;;  880667 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ghc-imported-from-autoloads.el ends here
