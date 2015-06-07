;;; alchemist-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (alchemist-mode alchemist-version) "alchemist"
;;;;;;  "alchemist.el" (21875 63543 0 0))
;;; Generated autoloads from alchemist.el

(autoload 'alchemist-version "alchemist" "\
Display Alchemist's version.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'alchemist-mode "alchemist" "\
Toggle alchemist mode.

Key bindings:
\\{alchemist-mode-map}

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (alchemist-iex-project-run alchemist-iex-run) "alchemist-iex"
;;;;;;  "alchemist-iex.el" (21875 63543 0 0))
;;; Generated autoloads from alchemist-iex.el

(defalias 'run-elixir 'alchemist-iex-run)

(autoload 'alchemist-iex-run "alchemist-iex" "\
Start an IEx process.
Show the IEx buffer if an IEx process is already run.

\(fn &optional ARG)" t nil)

(autoload 'alchemist-iex-project-run "alchemist-iex" "\
Start an IEx process with mix 'iex -S mix' in the
context of an Elixir project.
Show the IEx buffer if an IEx process is already run.

\(fn)" t nil)

;;;***

;;;### (autoloads (alchemist-test-enable-mode alchemist-test-mode)
;;;;;;  "alchemist-test-mode" "alchemist-test-mode.el" (21875 63543
;;;;;;  0 0))
;;; Generated autoloads from alchemist-test-mode.el

(autoload 'alchemist-test-mode "alchemist-test-mode" "\
Minor mode for Elixir ExUnit files.

The following commands are available:

\\{alchemist-test-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'alchemist-test-enable-mode "alchemist-test-mode" "\


\(fn)" nil nil)

(dolist (hook '(alchemist-mode-hook)) (add-hook hook 'alchemist-test-enable-mode))

;;;***

;;;### (autoloads nil nil ("alchemist-buffer.el" "alchemist-company.el"
;;;;;;  "alchemist-compile.el" "alchemist-complete.el" "alchemist-eval.el"
;;;;;;  "alchemist-execute.el" "alchemist-goto.el" "alchemist-help.el"
;;;;;;  "alchemist-hooks.el" "alchemist-message.el" "alchemist-mix.el"
;;;;;;  "alchemist-pkg.el" "alchemist-project.el" "alchemist-utils.el")
;;;;;;  (21875 63543 752369 0))

;;;***

(provide 'alchemist-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; alchemist-autoloads.el ends here
