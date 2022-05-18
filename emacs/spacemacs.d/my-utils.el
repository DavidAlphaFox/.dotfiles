(defun my-utils/setup-indent (n)
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
  (setq erlang-argument-indent n)
  (setq python-tab-width n))

(defun my-utils/find-files (locations)
  (cl-remove-if-not #'file-exists-p locations))


