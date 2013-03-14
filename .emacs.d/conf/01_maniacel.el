;; ##############################################################
;; ��ޒ�˒����Ò����� third party ��� elisp���debian ��Β�ђ�Ò����������˒�ʒ�Ò�ƒ�ʒ��
;; ��蒤���ʒ�⒤Β��
;; ##############################################################

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; html-tt(by clouder)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'html-helper-mode "html-helper-mode" "Yay HTML" t)
(setq auto-mode-alist
      (cons
       '("\\.html$" . html-helper-mode) auto-mode-alist))
(require 'html-tt)
(add-hook 'html-helper-mode-hook 'html-tt-load-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-save-buffers
;; http://namazu.org/~satoru/misc/auto-save/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (require 'auto-save-buffers)
  (run-with-idle-timer 0.5 t 'auto-save-buffers))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ����Ĵ�ɽ�����Ւ���ư�Ū�ά��ΒŸ���
;; http://www.namazu.org/~tsuchiya/elisp/#dabbrev-highlight
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'dabbrev-highlight)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; occur ��� grep ��ǒ�̒��������ɒ����˒�������Ԓ��ɽ���
;; http://www.bookshelf.jp/soft/meadow_47.html#SEC675
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(progn
  (require 'fm)
  (add-hook 'occur-mode-hook 'fm-start)
  (add-hook 'compilation-mode-hook 'fm-start))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; javascript-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'javascript-mode "javascript" "JavaScript mode" t)
(setq auto-mode-alist (append '(("\\.js$" . javascript-mode))
                              auto-mode-alist))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; hogememo
;; outline-mode �����Β�Ւ�������ޒ�Ò�Ȓ�˒�ʒ�뒤蒤���˒�ђ�Ò�������ƒ�ƒ�����
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'hogememo "hogememo" "HogeMemo" t nil)
(define-key esc-map "m" 'hogememo)
(setq hogememo-spool-directory "~/share/howm/diary/")
(add-hook 'hogememo-startup-hook
	  (function (lambda ()
		      (progn
			(outline-mode)
			(howm-mode)
			(skk-mode t)
			(recenter)))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; minibuf-isearch
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; use anything.el instead of this.
;; (require 'minibuf-isearch)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; session
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'session)
(add-hook 'after-init-hook 'session-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; elscreen
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'elscreen)
;; (require 'elscreen-howm) ;; ���������������������ɒ����Ғ�钤���Β�ϒ����������Ò��

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; mcomplete
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'mcomplete-mode "mcomplete"
  "Toggle minibuffer completion with prefix and substring matching."
  t nil)
(autoload 'turn-on-mcomplete-mode "mcomplete"
  "Turn on minibuffer completion with prefix and substring matching."
  t nil)
(autoload 'turn-off-mcomplete-mode "mcomplete"
  "Turn off minibuffer completion with prefix and substring matching."
  t nil)
(turn-on-mcomplete-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete.el
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'auto-complete)
(global-auto-complete-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; �������Ғ�钤�
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun nippou ()
  (interactive)
  (find-file "~/share/nippou.txt"))
