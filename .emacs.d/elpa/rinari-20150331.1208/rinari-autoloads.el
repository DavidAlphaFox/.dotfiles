;;; rinari-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (global-rinari-mode rinari-minor-mode rinari-launch
;;;;;;  rinari-cap rinari-rake) "rinari" "rinari.el" (21870 57668
;;;;;;  0 0))
;;; Generated autoloads from rinari.el

(autoload 'rinari-rake "rinari" "\
Select and run a rake TASK using `ruby-compilation-rake'.

\(fn &optional TASK EDIT-CMD-ARGS)" t nil)

(autoload 'rinari-cap "rinari" "\
Select and run a capistrano TASK using `ruby-compilation-cap'.

\(fn &optional TASK EDIT-CMD-ARGS)" t nil)

(autoload 'rinari-launch "rinari" "\
Call function `rinari-minor-mode' if inside a rails project.
Otherwise, disable that minor mode if currently enabled.

\(fn)" t nil)

(autoload 'rinari-minor-mode "rinari" "\
Enable Rinari minor mode to support working with the Ruby on Rails framework.

\(fn &optional ARG)" t nil)

(defvar global-rinari-mode nil "\
Non-nil if Global-Rinari mode is enabled.
See the command `global-rinari-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-rinari-mode'.")

(custom-autoload 'global-rinari-mode "rinari" nil)

(autoload 'global-rinari-mode "rinari" "\
Toggle Rinari minor mode in all buffers.
With prefix ARG, enable Global-Rinari mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Rinari minor mode is enabled in all buffers where
`rinari-launch-maybe' would do it.
See `rinari-minor-mode' for more information on Rinari minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("rinari-pkg.el") (21870 57668 102991 0))

;;;***

(provide 'rinari-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rinari-autoloads.el ends here
