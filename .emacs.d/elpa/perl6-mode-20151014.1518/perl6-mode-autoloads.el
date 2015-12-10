;;; perl6-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "perl6-detect" "perl6-detect.el" (22121 35919
;;;;;;  0 0))
;;; Generated autoloads from perl6-detect.el

(add-to-list 'interpreter-mode-alist '("perl6" . perl6-mode))

(add-to-list 'auto-mode-alist '("\\.p[lm]?6\\'" . perl6-mode))

(defconst perl6-magic-pattern (rx line-start (0+ space) (or (and "use" (0+ space) "v6") (and (opt (and (or "my" "our") (1+ space))) (or "module" "class" "role" "grammar" "enum" "slang" "subset")))))

(autoload 'perl6-magic-matcher "perl6-detect" "\
Check if the current buffer is a Perl 6 file.

Only looks at a buffer if it has a file extension of .t, .pl, or .pm.

Scans the buffer (to a maximum of 4096 chars) for the first non-comment,
non-whitespace line.  Returns t if that line looks like Perl 6 code,
nil otherwise.

\(fn)" nil nil)

(add-to-list 'magic-mode-alist '(perl6-magic-matcher . perl6-mode))

;;;***

;;;### (autoloads nil "perl6-mode" "perl6-mode.el" (22121 35919 0
;;;;;;  0))
;;; Generated autoloads from perl6-mode.el

(autoload 'perl6-mode "perl6-mode" "\
Major mode for editing Perl 6 code.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("perl6-font-lock.el" "perl6-indent.el"
;;;;;;  "perl6-mode-pkg.el") (22121 35919 512540 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; perl6-mode-autoloads.el ends here
