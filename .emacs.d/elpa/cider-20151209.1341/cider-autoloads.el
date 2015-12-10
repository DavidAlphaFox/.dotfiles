;;; cider-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "cider" "../../../../.emacs.d/elpa/cider-20151209.1341/cider.el"
;;;;;;  "ea28f5afe21651a757f6c676897f8cfd")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider.el

(autoload 'cider-version "cider" "\
Display CIDER's version.

\(fn)" t nil)

(autoload 'cider-jack-in "cider" "\
Start a nREPL server for the current project and connect to it.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.
If CLJS-TOO is non-nil, also start a ClojureScript REPL session with its
own buffer.

\(fn &optional PROMPT-PROJECT CLJS-TOO)" t nil)

(autoload 'cider-jack-in-clojurescript "cider" "\
Start a nREPL server and connect to it both Clojure and ClojureScript REPLs.
If PROMPT-PROJECT is t, then prompt for the project for which to
start the server.

\(fn &optional PROMPT-PROJECT)" t nil)

(autoload 'cider-connect "cider" "\
Connect to an nREPL server identified by HOST and PORT.
Create REPL buffer and start an nREPL client connection.

When the optional param PROJECT-DIR is present, the connection
gets associated with it.

\(fn HOST PORT &optional PROJECT-DIR)" t nil)

(eval-after-load 'clojure-mode '(progn (define-key clojure-mode-map (kbd "C-c M-j") #'cider-jack-in) (define-key clojure-mode-map (kbd "C-c M-J") #'cider-jack-in-clojurescript) (define-key clojure-mode-map (kbd "C-c M-c") #'cider-connect)))

;;;***

;;;### (autoloads nil "cider-apropos" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-apropos.el"
;;;;;;  "61edd77a2f3ce4100388aed9d03bbe82")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-apropos.el

(autoload 'cider-apropos "cider-apropos" "\
Show all symbols whose names match QUERY, a regular expression.
The search may be limited to the namespace NS, and may optionally search doc
strings, include private vars, and be case sensitive.

\(fn QUERY &optional NS DOCS-P PRIVATES-P CASE-SENSITIVE-P)" t nil)

(autoload 'cider-apropos-documentation "cider-apropos" "\
Shortcut for (cider-apropos <query> nil t).

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-browse-ns" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-browse-ns.el"
;;;;;;  "8cee42d6f6d8c50fa186f221884212a3")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-browse-ns.el

(autoload 'cider-browse-ns "cider-browse-ns" "\
List all NAMESPACE's vars in BUFFER.

\(fn NAMESPACE)" t nil)

(autoload 'cider-browse-ns-all "cider-browse-ns" "\
List all loaded namespaces in BUFFER.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-classpath" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-classpath.el"
;;;;;;  "dfdf78fb18f3b1ca06f297f5a3e83659")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-classpath.el

(autoload 'cider-classpath "cider-classpath" "\
List all classpath entries.

\(fn)" t nil)

(autoload 'cider-open-classpath-entry "cider-classpath" "\
Open a classpath entry.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-debug" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-debug.el"
;;;;;;  "9ba3d89b0e026f49db8bb2c256ab03be")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-debug.el

(autoload 'cider-debug-defun-at-point "cider-debug" "\
Instrument the \"top-level\" expression at point.
If it is a defn, dispatch the instrumented definition.  Otherwise,
immediately evaluate the instrumented expression.

While debugged code is being evaluated, the user is taken through the
source code and displayed the value of various expressions.  At each step,
a number of keys will be prompted to the user.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-grimoire" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-grimoire.el"
;;;;;;  "37cf22d1a7f2a5a05d649a1344de006e")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-grimoire.el

(autoload 'cider-grimoire-web "cider-grimoire" "\
Open grimoire documentation in the default web browser.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'. With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

(autoload 'cider-grimoire "cider-grimoire" "\
Open grimoire documentation in a popup buffer.

Prompts for the symbol to use, or uses the symbol at point, depending on
the value of `cider-prompt-for-symbol'. With prefix arg ARG, does the
opposite of what that option dictates.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider-inspector" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-inspector.el"
;;;;;;  "7767bf15d12c8c2cf79f5dcfac5a4113")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-inspector.el

(autoload 'cider-inspect-last-sexp "cider-inspector" "\
Inspect the result of the the expression preceding point.

\(fn)" t nil)

(autoload 'cider-inspect-defun-at-point "cider-inspector" "\
Inspect the result of the \"top-level\" expression at point.

\(fn)" t nil)

(autoload 'cider-inspect "cider-inspector" "\
Inspect the result of the preceding sexp.

With a prefix argument ARG it inspects the result of the \"top-level\" form.
With a second prefix argument it prompts for an expression to eval and inspect.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider-macroexpansion" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-macroexpansion.el"
;;;;;;  "b28bb4e2a08786db2c4ddde5a59ed0c6")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-macroexpansion.el

(autoload 'cider-macroexpand-1 "cider-macroexpansion" "\
Invoke 'macroexpand-1' on the expression preceding point.
If invoked with a PREFIX argument, use 'macroexpand' instead of
'macroexpand-1'.

\(fn &optional PREFIX)" t nil)

(autoload 'cider-macroexpand-all "cider-macroexpansion" "\
Invoke 'clojure.walk/macroexpand-all' on the expression preceding point.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-mode" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-mode.el"
;;;;;;  "892d4ca91b6ce682260232ed644f341c")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-mode.el

(defvar cider-mode-line '(:eval (format " cider[%s]" (cider--modeline-info))) "\
Mode line lighter for `cider-mode'.

The value of this variable is a mode line template as in
`mode-line-format'.  See Info Node `(elisp)Mode Line Format' for
details about mode line templates.

Customize this variable to change how `cider-mode' displays its
status in the mode line.  The default value displays the current connection.
Set this variable to nil to disable the mode line
entirely.")

(custom-autoload 'cider-mode-line "cider-mode" t)

(autoload 'cider-mode "cider-mode" "\
Minor mode for REPL interaction from a Clojure buffer.

\\{cider-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "cider-scratch" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-scratch.el"
;;;;;;  "f95bc79513089c9eec9fdc5f98600214")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-scratch.el

(autoload 'cider-scratch "cider-scratch" "\
Create a scratch buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "cider-selector" "../../../../.emacs.d/elpa/cider-20151209.1341/cider-selector.el"
;;;;;;  "956e844c5140cb551bc80bd4c3a95c0a")
;;; Generated autoloads from ../../../../.emacs.d/elpa/cider-20151209.1341/cider-selector.el

(autoload 'cider-selector "cider-selector" "\
Select a new buffer by type, indicated by a single character.
The user is prompted for a single character indicating the method by
which to choose a new buffer.  The `?' character describes then
available methods.  OTHER-WINDOW provides an optional target.

See `def-cider-selector-method' for defining new methods.

\(fn &optional OTHER-WINDOW)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../.emacs.d/elpa/cider-20151209.1341/cider-apropos.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-autoloads.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-browse-ns.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-classpath.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-client.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-common.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-compat.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-debug.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-doc.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-eldoc.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-grimoire.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-inspector.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-interaction.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-macroexpansion.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-mode.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-overlays.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-pkg.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-popup.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-repl.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-resolve.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-scratch.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-selector.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-stacktrace.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-test.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider-util.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/cider.el"
;;;;;;  "../../../../.emacs.d/elpa/cider-20151209.1341/nrepl-client.el")
;;;;;;  (22121 34440 796969 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; cider-autoloads.el ends here
