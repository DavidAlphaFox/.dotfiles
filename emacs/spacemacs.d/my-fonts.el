
(defconst my-fonts/symbol-font-name
  (cond
    (IS-MAC (when (member "Apple Symbols" (font-family-list)) "Apple Symbols"))
    ((or IS-LINUX IS-BSD) (when (member "Symbola" (font-family-list)) "Symbola"))
    (t nil)))
(defconst my-fonts/emoji-font-name
  (cond
    ((member "Apple Color Emoji" (font-family-list)) "Apple Color Emoji")
    ((member "Noto Color Emoji" (font-family-list)) "Noto Color Emoji")
    ((member "Noto Emoji" (font-family-list)) "Noto Emoji")
    ((member "Segoe UI Emoji" (font-family-list)) "Segoe UI Emoji")
    ((member "Symbola" (font-family-list)) "Symbola")
    (t nil)))

(defconst my-fonts/chinese-font-name
  (cond
    (IS-MAC
      (cond
        ((member "Hei" (font-family-list)) "Hei")
        ((member "Heiti SC" (font-family-list)) "Heiti SC")
        ((member "Heiti TC" (font-family-list)) "Heiti TC")
        (t nil)))
    ((or IS-BSD IS-LINUX) (when (member "WenQuanYi Micro Hei" (font-family-list)) "WenQuanYi Micro Hei"))
    (t nil)))

(defconst my-fonts/dotspacemacs
  (if (display-graphic-p)
    '("FiraCode Nerd Font Mono"  :size 14.0 :weight normal :width normal)
    '("monospace" :size 12.0 :weight normal :width normal)))

(when (display-graphic-p)
  (set-fontset-font t 'han my-fonts/chinese-font-name)
  (set-fontset-font t 'symbol my-fonts/symbol-font-name)
  (set-fontset-font t '(#x1f300 . #x1fad0) my-fonts/emoji-font-name))

