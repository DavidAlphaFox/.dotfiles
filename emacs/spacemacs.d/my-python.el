;;; my-python.el -*- lexical-binding: t; -*-

(defun my/python-hook ()
  (let ((n 4))
    (setq python-indent-offset n)
    (setq python-tab-width n))
  (lsp-deferred))

(add-hook 'python-mode-hook #'my/python-hook)
