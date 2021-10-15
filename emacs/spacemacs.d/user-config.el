
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

(setq-default fill-column 80)
;;(setq text-mode-hook 'turn-on-auto-fill)
;;(setq default-major-mode 'text-mode)
(auto-fill-mode)

(defun setup-indent (n)
  ;; java/c/c++
  (setq c-basic-offset n)
  (setq lisp-indent-offset n)
  ;; web development
  (setq coffee-tab-width n) ; coffeescript
  (setq javascript-indent-level n) ; javascript-mode
  (setq js-indent-level n) ; js-mode
  (setq js2-basic-offset n) ; js2-mode, in latest js2-mode, it's alias of js-indent-level
  (setq web-mode-markup-indent-offset n) ; web-mode, html tag in html file
  (setq web-mode-css-indent-offset n) ; web-mode, css in html file
  (setq web-mode-code-indent-offset n) ; web-mode, js code in html file
  (setq web-mode-attr-indent-offset n)
  (setq css-indent-offset n) ; css-mode
  (setq erlang-indent-level n)
  (setq erlang-indent-guard n)
  (setq erlang-argument-indent n))

(setq-default indent-tabs-mode nil)
(setup-indent 2)

(defun find-files (locations)
  (cl-remove-if-not
    (lambda (f) (file-exists-p f))
    locations))

(let ((chez-scheme
        (find-files (list "/usr/local/bin/chez-scheme"
                      "/usr/local/bin/chezscheme"
                      "/usr/local/bin/chez"
                      "/usr/bin/chez-scheme"
                      "/usr/bin/chezscheme"
                      "/usr/bin/chez"))))
  (when (not (null chez-scheme))
    (setq geiser-chez-binary (car chez-scheme))))

(let ((lua-binary
        (find-files (list "/usr/local/bin/lua54"
                      "/usr/local/bin/lua53"
                      "/usr/local/bin/lua52"
                      "/usr/local/bin/lua"
                      "/usr/bin/lua"))))
  (when (not (null lua-binary))
    (setq lua-default-application
      (file-name-base (car lua-binary)))))


(setq treemacs-lock-width t)
(setq treemacs-position 'right)
(setq treemacs-space-between-root-nodes nil)
(setq lsp-ui-doc-position 'at-point)

(require 'lsp-racket)
(require 'lsp-ocaml)
(add-hook 'tuareg-mode-hook #'lsp-deferred)
(add-hook 'racket-mode-hook #'lsp-deferred)

