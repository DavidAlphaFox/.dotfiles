;;; hindent-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (hindent-mode hindent/reformat-decl) "hindent"
;;;;;;  "hindent.el" (21870 57426 0 0))
;;; Generated autoloads from hindent.el

(autoload 'hindent/reformat-decl "hindent" "\
Re-format the current declaration by parsing and pretty
  printing it. Comments are preserved, although placement may be
  funky.

\(fn)" t nil)

(autoload 'hindent-mode "hindent" "\
Indent code with the hindent program.

Provide the following keybindings:

\\{hindent-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("hindent-pkg.el") (21870 57426 370670
;;;;;;  0))

;;;***

(provide 'hindent-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; hindent-autoloads.el ends here
