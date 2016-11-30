;;; popup-complete-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "popup-complete" "popup-complete.el" (22122
;;;;;;  5251 0 0))
;;; Generated autoloads from popup-complete.el

(autoload 'popup-complete--in-region "popup-complete" "\


\(fn NEXT-FUNC START END COLLECTION &optional PREDICATE)" nil nil)

(add-hook 'completion-in-region-functions 'popup-complete--in-region)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; popup-complete-autoloads.el ends here
