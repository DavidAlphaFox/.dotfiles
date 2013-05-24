(setq auto-mode-alist
          (cons '("\\.ml[iyl]?$" .  caml-mode) auto-mode-alist))

(autoload 'caml-mode "caml" "Major mode for editing Caml code." t)
(autoload 'run-caml "inf-caml" "Run an inferior Caml process." t)
(autoload 'camldebug "camldebug" (interactive) "Debug caml mode")

(require 'caml-font)