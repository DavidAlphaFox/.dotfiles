;; スクロールバーを右にする
(set-scroll-bar-mode 'right)

;; cocoa-emacs 用設定
(cond ((eq window-system 'ns)
       (progn
	 ;; font settings for cocoa-emacs
	 ;; see http://d.hatena.ne.jp/kazu-yamamoto/20090122/1232589385
	 (setq my-font "-*-*-medium-r-normal--14-*-*-*-*-*-fontset-hiramaru")
	 (setq fixed-width-use-QuickDraw-for-ascii t)
	 (setq mac-allow-anti-aliasing t)
	 (if (= emacs-major-version 22)
	     (require 'carbon-font))
	 (set-default-font my-font)
	 (add-to-list 'default-frame-alist `(font . ,my-font))
	 (setq mac-pass-control-to-system nil) ;; これいれないと undo できない
	 (when (= emacs-major-version 23)
	   (set-fontset-font
	    (frame-parameter nil 'font)
	    'japanese-jisx0208
	    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
	   (setq face-font-rescale-alist
		 '(("^-apple-hiragino.*" . 1.2)
		   (".*osaka-bold.*" . 1.2)
		   (".*osaka-medium.*" . 1.2)
		   (".*courier-bold-.*-mac-roman" . 1.0)
		   (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
		   (".*monaco-bold-.*-mac-roman" . 0.9)
		   ("-cdac$" . 1.3))))

	 ;; Command-Key and Option-Key
	 (setq ns-command-modifier (quote meta))
	 (setq ns-alternate-modifier (quote super)))))

;; Mac 全般用の設定
(cond ((or (eq window-system 'mac) (eq window-system 'ns))
       (progn
	 (setq mac-pass-control-to-system nil) ;; これいれないと undo できない on mac
	 (setenv "PATH" (concat "/opt/local/bin:" (getenv "PATH")))
	 (add-to-list 'exec-path "/opt/local/bin/"))))

;; carbon-emacs 固有設定
(cond ((eq window-system 'mac)
       (progn 
	 (require 'color-theme)
	 ;; (color-theme-initialize)
	 (color-theme-charcoal-black)
 
	 (modify-all-frames-parameters
	  (list (cons 'alpha  '(90 70 50 30))))
	 ;; 起動時のサイズをよしなに設定
	 (setq default-frame-alist
	       (append (list '(width . 300)
			     '(height . 47)
			     '(top . 0)
			     '(left . 00))
		       default-frame-alist)))))

;;Color
(if window-system (progn
   (set-background-color "Black")
   (set-foreground-color "LightGray")
   (set-cursor-color "Gray")
   (set-frame-parameter nil 'alpha 80)
   ))

;;; X or Mac な時の設定
(if (or (eq window-system 'x) (eq window-system 'mac) (eq window-system 'ns))
    (progn
      ;; 現在行をハイライト
      (global-hl-line-mode)
      ;; 画像ファイルを表示
      (auto-image-file-mode)
      ;; 色テーマ
      (require 'color-theme)
      ;; (color-theme-initialize)
      (color-theme-charcoal-black)
      (modify-all-frames-parameters
       (list (cons 'alpha  '(90 70 50 30))))
      )
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; carbon emacs を最大化する。
;; taken from http://d.hatena.ne.jp/suztomo/20080923/1222149517
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (eq window-system 'mac)
  (add-hook 'window-setup-hook
            (lambda ()
              (set-frame-parameter nil 'fullscreen 'fullboth)
              )))

(defun mac-toggle-max-window ()
  (interactive)
  (if (frame-parameter nil 'fullscreen)
      (set-frame-parameter nil 'fullscreen nil)
    (set-frame-parameter nil 'fullscreen 'fullboth)))

;; Carbon Emacsの設定で入れられた. メニューを隠したり．
(custom-set-variables
 '(display-time-mode t)
 '(tool-bar-mode nil)
 '(transient-mark-mode t))

