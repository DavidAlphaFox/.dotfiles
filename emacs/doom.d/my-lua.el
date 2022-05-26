;;; my-lua.el -*- lexical-binding: t; -*-
;; lua
(let ((lua-locations '("/usr/local/bin/lua54"
                        "/usr/local/bin/lua53"
                        "/usr/local/bin/lua52"
                        "/usr/local/bin/lua"
                        "/usr/bin/lua")))
  (let ((lua-list (my-utils/find-files lua-locations)))
    (when (not (null lua-list))
      (setq lua-default-application
        (file-name-base (car lua-list))))))
