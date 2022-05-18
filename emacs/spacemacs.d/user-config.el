;; language coding
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;; column
(setq-default fill-column 80)
(auto-fill-mode)

;; tab
(setq-default indent-tabs-mode nil)
(my-utils/setup-indent 2)

;;treemacs
(setq treemacs-lock-width t)
(setq treemacs-position 'right)
(setq treemacs-space-between-root-nodes nil)

;;lsp
(setq lsp-ui-doc-position 'at-point)

;;undo
(setq undo-tree-auto-save-history nil)

;; lua
(let ((lua-locations '("/usr/local/bin/lua54"
                        "/usr/local/bin/lua53"
                        "/usr/local/bin/lua52"
                        "/usr/local/bin/lua"
                        "/usr/bin/lua")))
  (let ((lua-list (my-utils/find-files lua-locations)))
    (when (not (null lua-list))
      (setq lua-default-application
        (file-name-base (car lua-list))))))


