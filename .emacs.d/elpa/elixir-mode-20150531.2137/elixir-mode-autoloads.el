;;; elixir-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (elixir-mode elixir-mode-version elixir-mode-open-docs-stable
;;;;;;  elixir-mode-open-docs-master elixir-mode-open-elixir-home
;;;;;;  elixir-mode-open-modegithub elixir-mode-iex) "elixir-mode"
;;;;;;  "elixir-mode.el" (21875 63541 0 0))
;;; Generated autoloads from elixir-mode.el

(autoload 'elixir-mode-iex "elixir-mode" "\
Elixir mode interactive REPL.
Optional argument ARGS-P .

\(fn &optional ARGS-P)" t nil)

(autoload 'elixir-mode-open-modegithub "elixir-mode" "\
Elixir mode open GitHub page.

\(fn)" t nil)

(autoload 'elixir-mode-open-elixir-home "elixir-mode" "\
Elixir mode go to language home.

\(fn)" t nil)

(autoload 'elixir-mode-open-docs-master "elixir-mode" "\
Elixir mode go to master documentation.

\(fn)" t nil)

(autoload 'elixir-mode-open-docs-stable "elixir-mode" "\
Elixir mode go to stable documentation.

\(fn)" t nil)

(autoload 'elixir-mode-version "elixir-mode" "\
Get the Elixir-Mode version as string.

If called interactively or if SHOW-VERSION is non-nil, show the
version in the echo area and the messages buffer.

The returned string includes both, the version from package.el
and the library version, if both a present and different.

If the version number could not be determined, signal an error,
if called interactively, or if SHOW-VERSION is non-nil, otherwise
just return nil.

\(fn &optional SHOW-VERSION)" t nil)

(autoload 'elixir-mode "elixir-mode" "\
Major mode for editing Elixir code.

\\{elixir-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.elixir\\'" . elixir-mode))

(add-to-list 'auto-mode-alist '("\\.ex\\'" . elixir-mode))

(add-to-list 'auto-mode-alist '("\\.exs\\'" . elixir-mode))

;;;***

;;;### (autoloads nil nil ("elixir-deprecated.el" "elixir-mode-pkg.el"
;;;;;;  "elixir-smie.el") (21875 63541 696035 0))

;;;***

(provide 'elixir-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; elixir-mode-autoloads.el ends here
