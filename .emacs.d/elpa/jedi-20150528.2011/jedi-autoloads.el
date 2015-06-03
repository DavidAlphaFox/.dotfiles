;;; jedi-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (jedi:auto-complete-mode jedi:complete jedi:ac-setup)
;;;;;;  "jedi" "jedi.el" (21870 57691 0 0))
;;; Generated autoloads from jedi.el

(autoload 'jedi:ac-setup "jedi" "\
Add Jedi AC sources to `ac-sources'.

If auto-completion is all you need, you can call this function instead
of `jedi:setup', like this::

   (add-hook 'python-mode-hook 'jedi:ac-setup)

Note that this function calls `auto-complete-mode' if it is not
already enabled, for people who don't call `global-auto-complete-mode'
in their Emacs configuration.

\(fn)" t nil)

(autoload 'jedi:complete "jedi" "\
Complete code at point.

\(fn &key (expand ac-expand-on-auto-complete))" t nil)

(autoload 'jedi:auto-complete-mode "jedi" "\


\(fn)" nil nil)

(setq jedi:setup-function #'jedi:ac-setup jedi:mode-function #'jedi:auto-complete-mode)

;;;***

;;;### (autoloads nil nil ("jedi-pkg.el") (21870 57691 681028 0))

;;;***

(provide 'jedi-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; jedi-autoloads.el ends here
