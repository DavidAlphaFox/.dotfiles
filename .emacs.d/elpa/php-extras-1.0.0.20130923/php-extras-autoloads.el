;;; php-extras-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (php-extras-completion-setup php-extras-completion-at-point
;;;;;;  php-extras-autocomplete-setup php-extras-eldoc-documentation-function
;;;;;;  php-extras-insert-previous-variable php-extras-auto-complete-insert-parenthesis
;;;;;;  php-extras-insert-previous-variable-key) "php-extras" "php-extras.el"
;;;;;;  (21077 32969 0 0))
;;; Generated autoloads from php-extras.el

(defvar php-extras-insert-previous-variable-key [(control c) (control $)] "\
Key sequence for `php-extras-insert-previous-variable'.")

(custom-autoload 'php-extras-insert-previous-variable-key "php-extras" nil)

(defvar php-extras-auto-complete-insert-parenthesis t "\
Whether auto complete insert should add a pair of parenthesis.")

(custom-autoload 'php-extras-auto-complete-insert-parenthesis "php-extras" t)

(autoload 'php-extras-insert-previous-variable "php-extras" "\
Insert previously used variable from buffer.
With prefix argument search that number of times backwards for
variable. If prefix argument is negative search forward.

\(fn ARG)" t nil)

(autoload 'php-extras-eldoc-documentation-function "php-extras" "\
Get function arguments for core PHP function at point.

\(fn)" nil nil)

(add-hook 'php-mode-hook 'php-extras-eldoc-setup)

(autoload 'php-extras-autocomplete-setup "php-extras" "\


\(fn)" nil nil)

(add-hook 'php-mode-hook #'php-extras-autocomplete-setup)

(autoload 'php-extras-completion-at-point "php-extras" "\


\(fn)" nil nil)

(autoload 'php-extras-completion-setup "php-extras" "\


\(fn)" nil nil)

(add-hook 'php-mode-hook #'php-extras-completion-setup)

(eval-after-load 'php-mode `(let ((map php-mode-map) (key php-extras-insert-previous-variable-key)) (define-key map key 'php-extras-insert-previous-variable)))

;;;***

;;;### (autoloads (php-extras-generate-eldoc) "php-extras-gen-eldoc"
;;;;;;  "php-extras-gen-eldoc.el" (21077 32969 0 0))
;;; Generated autoloads from php-extras-gen-eldoc.el

(autoload 'php-extras-generate-eldoc "php-extras-gen-eldoc" "\
Regenerate PHP function argument hash table from php.net. This is slow!

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("php-extras-eldoc-functions.el" "php-extras-pkg.el")
;;;;;;  (21077 32969 462741 0))

;;;***

(provide 'php-extras-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; php-extras-autoloads.el ends here
