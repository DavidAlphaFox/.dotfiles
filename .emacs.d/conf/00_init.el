;; ##############################################################
;; 基本的な設定。
;; ##############################################################

; 最下行で「↓」を押したときスムーズなスクロールにする
(progn
 (setq scroll-step 1)
 (setq scroll-conservatively 4))

; PageUp,PageDown の時にカーソル位置を保持
(setq scroll-preserve-screen-position t)

; マウスの真ん中ボタンでペーストする時にカーソル位置を変更しない
(setq mouse-yank-at-point t)

; カーソルが行頭にあるときに，C-k 1回で その行全体を削除
(setq kill-whole-line t)

; yes,no を答えるかわりに，y,n にする
(fset 'yes-or-no-p 'y-or-n-p)

; backup file を作らない。(.save.. ってやつとか ~ なんとかとか)
(progn
  (setq auto-save-list-file-name nil)
  (setq auto-save-list-file-prefix nil)
  (setq make-backup-files nil))

;;; 起動直後の *scratch* buffer に入る文字列をなくす
(setq initial-scratch-message nil)

;;; startup message を消す
(setq inhibit-startup-message t)

;; 見た目の設定
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

; ~/bin に PATH を通す & exec-path に追加
(progn
  (setenv "PATH" (concat "~/bin:" (getenv "PATH")))
  (add-to-list 'exec-path "~/bin"))

; tab width
(setq tab-width 4)

;;; key config
(progn
  (global-set-key "\M-?" 'help-for-help)
  (global-set-key "\M-g" 'goto-line)
  (global-set-key "\C-h" 'backward-delete-char)
  (global-set-key [delete] 'delete-char))

;; Emacs 21以降だと Makefile の編集時にTABを打ったときに "Suspicious
;; line XXX.  Save anyway?" というプロンプトが出るのでこれを抑制する
(add-hook 'makefile-mode-hook
	  (function
	   (lambda () (fset 'makefile-warn-suspicious-lines 'ignore))))

;;; text-mode
(progn
  ;; (setq-default fill-column 80)
  (setq text-mode-hook 'turn-on-auto-fill)
  (setq default-major-mode 'text-mode)
  (auto-fill-mode))

;;; emacsclient サーバを起動
(server-start)

;; ↓これなんの設定かよくわからん。
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;; タイムロケールを英語に
(setq system-time-locale "C")

;; .svn は補完対象から外す
(add-to-list 'completion-ignored-extensions ".svn/")
;; 補完は ignore-case で。
(setq completion-ignore-case t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; C プログラムの書式は k&r style
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (defun my-c-mode-common-hook ()
    (c-set-style "k&r"))
  (add-hook 'c-mode-common-hook 'my-c-mode-common-hook))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; いろいろ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'auto-mode-alist '("\\.rd$" . rd-mode)) ; メモは rd-mode に

;; 日本語まじってる場合でも ispell が効くように
(eval-after-load "ispell"
 '(setq ispell-skip-region-alist (cons '("[^\000-\377]+")
					ispell-skip-region-alist)))
(eval-after-load "ispell"
  '(setq ispell-skip-region-alist (cons '("[^A-Za-z0-9 -]+")
                                        ispell-skip-region-alist)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; iswitchb
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(iswitchb-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; diff-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'diff-mode "diff-mode" "Diff major mode" t)
(add-to-list 'auto-mode-alist '("\\.\\(diffs?\\|patch\\|rej\\)\\'" . diff-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; uniquify(同名ファイルのバッファ名の識別文字列を変更する)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "uniquify")

(if (not (memq 'time-stamp write-file-hooks))
    (setq write-file-hooks
	  (cons 'time-stamp write-file-hooks)))

;; .h なファイルは C++-mode で．
(setq auto-mode-alist
      (cons (cons "\\.h$" 'c++-mode)
	    auto-mode-alist))

;; gauche の設定
;; (progn
;;   (setq quack-default-program "gosh")
;;   (setq scheme-program-name "gosh")
;;   (autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process. " t)
;;   (require 'inferior-gauche)
;;   (setq auto-mode-alist
;; 	(cons '("\\.scm$" . inferior-gauche-mode) auto-mode-alist))
;;   (setq default-major-mode 'inferior-gauche-mode)
;;   (inferior-gauche-mode))

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; C-l は、中央にくるだけでいい。emacs23 でデフォルトが recenter-top-bottom になったぽい
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key "\C-l" 'recenter)
(global-set-key "\C-j" 'recenter) ;; ついでに C-j も recenter にする
