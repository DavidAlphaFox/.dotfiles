;;; ac-slime-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "ac-slime" "../../../../.emacs.d/elpa/ac-slime-20150729.2035/ac-slime.el"
;;;;;;  "7377d66c5535fed01942785fb1d656d3")
;;; Generated autoloads from ../../../../.emacs.d/elpa/ac-slime-20150729.2035/ac-slime.el

(defface ac-slime-menu-face '((t (:inherit ac-candidate-face))) "\
Face for slime candidate menu." :group (quote auto-complete))

(defface ac-slime-selection-face '((t (:inherit ac-selection-face))) "\
Face for the slime selected candidate." :group (quote auto-complete))

(defvar ac-source-slime-fuzzy '((init . ac-slime-init) (candidates . ac-source-slime-fuzzy-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (match lambda (prefix candidates) candidates) (document . ac-slime-documentation)) "\
Source for fuzzy slime completion.")

(defvar ac-source-slime-simple '((init . ac-slime-init) (candidates . ac-source-slime-simple-candidates) (candidate-face . ac-slime-menu-face) (selection-face . ac-slime-selection-face) (prefix . slime-symbol-start-pos) (symbol . "l") (document . ac-slime-documentation) (match . ac-source-slime-case-correcting-completions)) "\
Source for slime completion.")

(autoload 'set-up-slime-ac "ac-slime" "\
Add an optionally FUZZY slime completion source to `ac-sources'.

\(fn &optional FUZZY)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/ac-slime-20150729.2035/ac-slime-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/ac-slime-20150729.2035/ac-slime.el")
;;;;;;  (22122 4123 717948 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; ac-slime-autoloads.el ends here
