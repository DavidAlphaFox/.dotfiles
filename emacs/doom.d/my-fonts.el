
(defconst my/SYMBOL-FONT-NAME
  (cond
    (IS-MAC (when (member "Apple Symbols" (font-family-list)) "Apple Symbols"))
    ((or IS-LINUX IS-BSD) (when (member "Symbola" (font-family-list)) "Symbola"))
    (t nil)))
(defconst my/EMOJI-FONT-NAME
  (cond
    ((member "Apple Color Emoji" (font-family-list)) "Apple Color Emoji")
    ((member "twemoji-v2" (font-family-list)) "twemoji-v2")
    ((member "Noto Color Emoji" (font-family-list)) "Noto Color Emoji")
    ((member "Noto Emoji" (font-family-list)) "Noto Emoji")
    ((member "Segoe UI Emoji" (font-family-list)) "Segoe UI Emoji")
    ((member "Symbola" (font-family-list)) "Symbola")
    (t nil)))

(defconst my/CHINESE-FONT-NAME
  (cond
    (IS-MAC
      (cond
        ((member "Hei" (font-family-list)) "Hei")
        ((member "Heiti SC" (font-family-list)) "Heiti SC")
        ((member "Heiti TC" (font-family-list)) "Heiti TC")
        (t nil)))
    ((or IS-BSD IS-LINUX) (when (member "WenQuanYi Micro Hei" (font-family-list)) "WenQuanYi Micro Hei"))
    (t nil)))

(defconst my/FONT
  (if (display-graphic-p)
    (font-spec :name "FiraCode Nerd Font Mono"  :size 14.0 :weight 'normal :width 'normal)
    (font-spec :name "monospace" :size 12.0 :weight 'normal :width 'normal)))

;;(when (display-graphic-p)
;;  (set-fontset-font t 'han my/CHINESE-FONT-NAME)
;;  (set-fontset-font t 'symbol my/SYMBOL-FONT-NAME)
;;  (set-fontset-font t '(#x1f300 . #x1fad0) my/EMOJI-FONT-NAME))

(setq doom-font my/FONT)
;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
