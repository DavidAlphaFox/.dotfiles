
(setq-default indent-tabs-mode nil tab-always-indent nil tab-width 4) 

(setq-default kill-whole-line t)

(defalias 'yes-or-no-p 'y-or-n-p) 

(global-linum-mode t) 

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
  (load "font-lock")                         ;; 色付ける
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

;; .gz なファイルを読めるように
(auto-compression-mode t)

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

(server-start)

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

; tool-bar を表示しない
(tool-bar-mode 0)

;; 長い文章の折り返しで物理的に次の行に移動
;; taken from http://www.bookshelf.jp/pukiwiki/pukiwiki.php?2ch%2F%BC%AB%CB%FD%A4%CE.emacs%A4%F2%C5%BD%A4%EA%C9%D5%A4%B1%A4%E8%A4%A6
(global-set-key "\C-p" 'previous-window-line)
(global-set-key "\C-n" 'next-window-line)
(global-set-key [up] 'previous-window-line)
(global-set-key [down] 'next-window-line)
(defun previous-window-line (n)
  (interactive "p")
  (let ((cur-col
		 (- (current-column)
			(save-excursion (vertical-motion 0) (current-column)))))
    (vertical-motion (- n))
    (move-to-column (+ (current-column) cur-col)))
  (run-hooks 'auto-line-hook)
  )
(defun next-window-line (n)
  (interactive "p")
  (let ((cur-col
		 (- (current-column)
			(save-excursion (vertical-motion 0) (current-column)))))
    (vertical-motion n)
    (move-to-column (+ (current-column) cur-col)))
  (run-hooks 'auto-line-hook)
  )


