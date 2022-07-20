;;; my-lua.el -*- lexical-binding: t; -*-
;; lua

(unless (null my/LUA)
  (setq lua-default-application
    (file-name-base my/LUA)))
