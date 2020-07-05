;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
(package! doom-themes)
(package! exec-path-from-shell)
(cond
 ((eq system-type 'darwin)
  (progn (package! geiser)))
 ((eq system-type 'gnu/linux)
  (progn (package! geiser :disable t)))
 ((eq system-type 'berkeley-unix)
  (progn (package! geiser))))


;;(package! doom-themes :recipe (:fetcher github :repo "hlissner/emacs-doom-themes"))
