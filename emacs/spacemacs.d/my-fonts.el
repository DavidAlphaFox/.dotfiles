(defconst my/SYMBOL-FONT-NAME
  (cond
    (my/IS-MAC (when (member "Apple Symbols" (font-family-list)) "Apple Symbols"))
    ((or my/IS-LINUX my/IS-BSD) (when (member "Symbola" (font-family-list)) "Symbola"))
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
    (my/IS-MAC
      (cond
        ((member "Hei" (font-family-list)) "Hei")
        ((member "Heiti SC" (font-family-list)) "Heiti SC")
        ((member "Heiti TC" (font-family-list)) "Heiti TC")
        (t nil)))
    ((or my/IS-BSD my/IS-LINUX) (when (member "WenQuanYi Micro Hei" (font-family-list)) "WenQuanYi Micro Hei"))
    (t nil)))

(defconst my/FONT
  (if (display-graphic-p)
    '("TerminessTTF Nerd Font"  :size 14.0 :weight medium :width normal)
    '("monospace" :size 12.0 :weight normal :width normal)))

(when (display-graphic-p)
  (set-fontset-font t 'han my/CHINESE-FONT-NAME)
  (set-fontset-font t 'symbol my/SYMBOL-FONT-NAME)
  (set-fontset-font t '(#x1f300 . #x1fad0) my/EMOJI-FONT-NAME))
