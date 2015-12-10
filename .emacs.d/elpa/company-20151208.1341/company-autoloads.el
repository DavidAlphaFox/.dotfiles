;;; company-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "company" "../../../../.emacs.d/elpa/company-20151208.1341/company.el"
;;;;;;  "289f05d06757959583037519d8ee2de8")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company.el

(autoload 'company-mode "company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global-Company mode is enabled.
See the command `global-company-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company" nil)

(autoload 'global-company-mode "company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global-Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "company-abbrev" "../../../../.emacs.d/elpa/company-20151208.1341/company-abbrev.el"
;;;;;;  "5c53bd58b979c8d570d3e6f0f4e35579")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-abbrev.el

(autoload 'company-abbrev "company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-bbdb" "../../../../.emacs.d/elpa/company-20151208.1341/company-bbdb.el"
;;;;;;  "3f339312c4015a03f717019d38b6e663")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-bbdb.el

(autoload 'company-bbdb "company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-css" "../../../../.emacs.d/elpa/company-20151208.1341/company-css.el"
;;;;;;  "537159cbe157b676671148a1e62c2c5c")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-css.el

(autoload 'company-css "company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-dabbrev" "../../../../.emacs.d/elpa/company-20151208.1341/company-dabbrev.el"
;;;;;;  "ac1b2afde0806f01496f632b1a931151")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-dabbrev.el

(autoload 'company-dabbrev "company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-dabbrev-code" "../../../../.emacs.d/elpa/company-20151208.1341/company-dabbrev-code.el"
;;;;;;  "a136e9984b20bff17c517cfca0aaf37d")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-elisp" "../../../../.emacs.d/elpa/company-20151208.1341/company-elisp.el"
;;;;;;  "05e3f346f5e034870305b85ebbe307d1")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-elisp.el

(autoload 'company-elisp "company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-etags" "../../../../.emacs.d/elpa/company-20151208.1341/company-etags.el"
;;;;;;  "82c04049b6e597f924404e05590b7156")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-etags.el

(autoload 'company-etags "company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-files" "../../../../.emacs.d/elpa/company-20151208.1341/company-files.el"
;;;;;;  "9d5893b3fb3c720e3141bd7efef66313")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-files.el

(autoload 'company-files "company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-gtags" "../../../../.emacs.d/elpa/company-20151208.1341/company-gtags.el"
;;;;;;  "63f1a323f3c5ccd68e4b1aafab446780")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-gtags.el

(autoload 'company-gtags "company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-ispell" "../../../../.emacs.d/elpa/company-20151208.1341/company-ispell.el"
;;;;;;  "5943b6ae390848ae4539b8bff8305a2b")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-ispell.el

(autoload 'company-ispell "company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-keywords" "../../../../.emacs.d/elpa/company-20151208.1341/company-keywords.el"
;;;;;;  "10fb89c80ff7a2e05d23ddbd4b66a936")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-keywords.el

(autoload 'company-keywords "company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-nxml" "../../../../.emacs.d/elpa/company-20151208.1341/company-nxml.el"
;;;;;;  "37e45d49c64cec5c12ba830a380910b2")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-nxml.el

(autoload 'company-nxml "company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-oddmuse" "../../../../.emacs.d/elpa/company-20151208.1341/company-oddmuse.el"
;;;;;;  "ad74a3575b57735332c9033888fa9484")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-oddmuse.el

(autoload 'company-oddmuse "company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-semantic" "../../../../.emacs.d/elpa/company-20151208.1341/company-semantic.el"
;;;;;;  "da00de14a26c0b21ca8d3988765b6307")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-semantic.el

(autoload 'company-semantic "company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-tempo" "../../../../.emacs.d/elpa/company-20151208.1341/company-tempo.el"
;;;;;;  "9057bb3bf3b97b086fa726c612344797")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-tempo.el

(autoload 'company-tempo "company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-xcode" "../../../../.emacs.d/elpa/company-20151208.1341/company-xcode.el"
;;;;;;  "0106fec3041ec311c0850ad16a5d099a")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-xcode.el

(autoload 'company-xcode "company-xcode" "\
`company-mode' completion backend for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-yasnippet" "../../../../.emacs.d/elpa/company-20151208.1341/company-yasnippet.el"
;;;;;;  "b0537a76e047045c033f5f1756cc97d0")
;;; Generated autoloads from ../../../../.emacs.d/elpa/company-20151208.1341/company-yasnippet.el

(autoload 'company-yasnippet "company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/company-20151208.1341/company-abbrev.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-bbdb.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-capf.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-clang.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-cmake.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-css.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-dabbrev-code.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-dabbrev.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-eclim.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-elisp.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-etags.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-files.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-gtags.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-ispell.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-keywords.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-nxml.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-oddmuse.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-semantic.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-template.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-tempo.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-xcode.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company-yasnippet.el"
;;;;;;  "../../../../.emacs.d/elpa/company-20151208.1341/company.el")
;;;;;;  (22121 34216 650465 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-autoloads.el ends here
