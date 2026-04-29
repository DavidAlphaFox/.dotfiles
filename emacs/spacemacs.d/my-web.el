;;; my-web.el -*- lexical-binding: t; -*-
(let ((n 2))
  (setq-default coffee-tab-width n             ; coffeescript
                javascript-indent-level n      ; javascript-mode
                js-indent-level n              ; js-mode
                js2-basic-offset n             ; js2-mode (alias of js-indent-level)
                typescript-indent-level n      ; typescript-mode
                web-mode-markup-indent-offset n
                web-mode-css-indent-offset n
                web-mode-code-indent-offset n
                web-mode-attr-indent-offset n
                css-indent-offset n))          ; css-mode
