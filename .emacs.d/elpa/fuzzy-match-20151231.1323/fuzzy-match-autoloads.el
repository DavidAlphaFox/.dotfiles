;;; fuzzy-match-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "fuzzy-match" "fuzzy-match.el" (22584 15404
;;;;;;  148375 0))
;;; Generated autoloads from fuzzy-match.el

(autoload 'FM-offer-corrections "fuzzy-match" "\
Offer corrections for ITEM from CANDIDATES.  Maybe replace ITEM.
If PROMPT-P is non-nil and there is only one candidate, ask the user before
replacing ITEM.  Replacement is performed by `replace-match'.
If more than one correction exists, call `FM-list-candidates' to display them.
Returns: nil if no correction was inserted.
         `sole' if corrected with the only correction match.
         `correct' if the only correction match is identical to ITEM.
         `listed' if a completion listing was shown.

\(fn ITEM CANDIDATES &optional PROMPT-P)" t nil)

(autoload 'lisp-spell-symbol "fuzzy-match" "\
Perform spell checking on Lisp symbol preceding point.
With prefix arg(s) and only one candidate, ask the user before replacing.
With double prefix arg (\\[universal-argument] \\[universal-argument]), use `FM-all-fuzzy-matches' rather than
`FM-all-close-matches' to find Lisp symbol candidates.  This is useful if the
Lisp symbol stub is only partially complete.

To minimize matching effort and results, the first character of the
symbol is assumed to be correct.  See also `FM-offer-corrections'.

\(fn PROMPT)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; fuzzy-match-autoloads.el ends here
