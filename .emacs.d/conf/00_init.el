(setq indent-tabs-mode nil) 
(setq default-tab-width 4)
(setq tab-width 4) 
(setq indent-line-function 'insert-tab)

;;(setq tab-stop-list ()) 
;;(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96)) 
 
(setq-default kill-whole-line t)

(defalias 'yes-or-no-p 'y-or-n-p) 

(setq initial-scratch-message nil)
(setq inhibit-startup-message t)

(progn
  (global-set-key "\M-?" 'help-for-help)
  (global-set-key "\M-g" 'goto-line)
  (global-set-key "\C-h" 'backward-delete-char)
  (global-set-key [delete] 'delete-char))

(progn
  (setq auto-save-list-file-name nil)
  (setq auto-save-list-file-prefix nil)
  (setq make-backup-files nil))

(progn
  (load "font-lock")
  (global-font-lock-mode t)
  (show-paren-mode)                          ;; 対応する括弧をハイライト
  (menu-bar-mode -1)                         ;; メニューバーを消す
  (setq transient-mark-mode t)               ;; 選択領域を色付け
  (line-number-mode t)                       ;; カーソルの位置が何行目かを表示する
  (column-number-mode t)                     ;; カーソルの位置が何桁目かを表示する
  (setq use-dialog-boxes nil)                ;; ダイアログボックスを使わない
  (setq mode-line-frame-identification " ")  ;; フレーム情報を隠す
  (setq visible-bell t)                      ;; visible-bell
  )


;;; shell-mode で ^M を出さなくする．
(add-hook 'comint-output-filter-functions 'shell-strip-ctrl-m nil t)

;;; ステータスラインに時間を表示する
(progn
  (setq display-time-24hr-format t)
  (setq display-time-format "%Y-%m-%d(%a) %H:%M")
  (setq display-time-day-and-date t)
  (setq display-time-interval 30)
  (display-time))


(add-hook 'makefile-mode-hook
	  (function
	   (lambda () (fset 'makefile-warn-suspicious-lines 'ignore))))

(progn
  (setq-default fill-column 80)
  (setq text-mode-hook 'turn-on-auto-fill)
  (setq default-major-mode 'text-mode)
  (auto-fill-mode))

(setq system-time-locale "C")

(add-to-list 'completion-ignored-extensions ".svn/")
(add-to-list 'completion-ignored-extensions ".git/")
(setq completion-ignore-case t)

(progn
  (defun my-c-mode-common-hook ()
    (c-set-style "k&r"))
  (add-hook 'c-mode-common-hook 'my-c-mode-common-hook))

(autoload 'diff-mode "diff-mode" "Diff major mode" t)
(add-to-list 'auto-mode-alist '("\\.\\(diffs?\\|patch\\|rej\\)\\'" . diff-mode))

(load "uniquify")

(if (not (memq 'time-stamp write-file-hooks))
    (setq write-file-hooks
	  (cons 'time-stamp write-file-hooks)))

(setq auto-mode-alist
      (cons (cons "\\.h$" 'c++-mode)
	    auto-mode-alist))
;; eldoc
;; http://www.bookshelf.jp/soft/meadow_41.html#SEC598
(autoload 'turn-on-eldoc-mode "eldoc" nil t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)


(dolist (command '(yank yank-pop))
  (eval
   `(defadvice ,command (after indent-region activate)
      (and (not current-prefix-arg)
           (member major-mode
                   '(emacs-lisp-mode
                     lisp-mode
                     clojure-mode
                     scheme-mode
                     haskell-mode
                     ruby-mode
                     rspec-mode
                     python-mode
                     c-mode
                     c++-mode
                     objc-mode
                     latex-mode
                     js-mode
                     plain-tex-mode))
           (let ((mark-even-if-inactive transient-mark-mode))
             (indent-region (region-beginning) (region-end) nil))))))
