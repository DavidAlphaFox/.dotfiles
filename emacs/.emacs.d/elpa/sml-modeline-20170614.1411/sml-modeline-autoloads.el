;;; sml-modeline-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "sml-modeline" "sml-modeline.el" (23302 8524
;;;;;;  534785 587000))
;;; Generated autoloads from sml-modeline.el

(let ((loads (get 'sml-modeline 'custom-loads))) (if (member '"sml-modeline" loads) nil (put 'sml-modeline 'custom-loads (cons '"sml-modeline" loads))))

(defvar sml-modeline-mode nil "\
Non-nil if Sml-Modeline mode is enabled.
See the `sml-modeline-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sml-modeline-mode'.")

(custom-autoload 'sml-modeline-mode "sml-modeline" nil)

(autoload 'sml-modeline-mode "sml-modeline" "\
Show buffer size and position like scrollbar in mode line.
You can customize this minor mode, see option `sml-modeline-mode'.

Note: If you turn this mode on then you probably want to turn off
option `scroll-bar-mode'.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; sml-modeline-autoloads.el ends here
