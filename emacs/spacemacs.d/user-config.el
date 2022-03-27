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

;(let ((chez-scheme
;        (find-files (list "/usr/local/bin/chez-scheme"
;                      "/usr/local/bin/chezscheme"
;                      "/usr/local/bin/chez"
;                      "/usr/bin/chez-scheme"
;                      "/usr/bin/chezscheme"
;                      "/usr/bin/chez"))))
;  (when (not (null chez-scheme))
;    (setq geiser-chez-binary (car chez-scheme))))

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
(setq undo-tree-auto-save-history nil)

(when (display-graphic-p)
  (let ((symbol-font-name
          (cond
            (IS-MAC (when (member "Apple Symbols" (font-family-list)) "Apple Symbols"))
            ((or IS-LINUX IS-BSD) (when (member "Symbola" (font-family-list)) "Symbola"))
            (t nil)))
         (emoji-font-name
           (cond
             ((member "Apple Color Emoji" (font-family-list)) "Apple Color Emoji")
             ((member "Noto Color Emoji" (font-family-list)) "Noto Color Emoji")
             ((member "Noto Emoji" (font-family-list)) "Noto Emoji")
             ((member "Segoe UI Emoji" (font-family-list)) "Segoe UI Emoji")
             ((member "Symbola" (font-family-list)) "Symbola")
             (t nil)))
         (chinese-font-name
           (cond
             (IS-MAC
               (cond
                 ((member "Hei" (font-family-list)) "Hei")
                 ((member "Heiti SC" (font-family-list)) "Heiti SC")
                 ((member "Heiti TC" (font-family-list)) "Heiti TC")
                 (t nil)))
             ((or IS-BSD IS-LINUX) (when (member "WenQuanYi Micro Hei" (font-family-list)) "WenQuanYi Micro Hei"))
             (t nil))))
  (set-fontset-font t 'han chinese-font-name)
  (set-fontset-font t 'symbol symbol-font-name)
  (set-fontset-font t '(#x1f300 . #x1fad0) emoji-font-name)))


;; setup racket, racket-langserver can only work with gui
(when (display-graphic-p)
  (require 'lsp-racket)
  (add-hook 'racket-mode-hook #'lsp-deferred))

;; setup ocaml
(require 'lsp-ocaml)
(add-hook 'tuareg-mode-hook #'lsp-deferred)

;; (require 'merlin)
;; (require 'merlin-eldoc)
;; (require 'tuareg)
;; (require 'utop)
;; (setq merlin-use-auto-complete-mode t)
;; (setq tuareg-opam-insinuate t)

;; (tuareg-opam-update-env (tuareg-opam-current-compiler))

;;(autoload 'merlin-mode "merlin" "Merlin mode" t)
;;(add-hook 'tuareg-mode-hook 'merlin-mode)
;;(add-hook 'utop-mode-hook 'merlin-mode)
;;(add-hook 'tuareg-mode-hook 'merlin-eldoc-setup)
;;(add-hook 'utop-mode-hook 'merlin-eldoc-setup)

;;(autoload 'utop-minor-mode "utop" "Minor mode for utop" t)
;;(add-hook 'tuareg-mode-hook 'utop-minor-mode)
;;(add-hook 'utop-mode-hook 'company-mode)
