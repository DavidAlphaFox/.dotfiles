;;; ../.dotfiles/emacs/doom.d/my-init.el -*- lexical-binding: t; -*-
(load! "my-utils.el")

(defconst MY-BINARY-PATH '("/usr/local/bin/"
                            "/usr/local/sbin/"
                            "/usr/bin/"
                            "/usr/sbin/"))
(defconst MY-LUA-VERSION '("lua" "lua54" "lua53" "lua52"))

(defconst MY-LUA
  (let* ((lua-files
           (my-utils/build-paths MY-BINARY-PATH MY-LUA-VERSION))
          (the-lua
            (my-utils/find-files lua-files)))
    (if (not (null the-lua))
      (car the-lua)
      nil)))

(defconst HAS-DOTNET
  (when (or IS-MAC IS-LINUX)
    (let* ((dotnet-files
             (my-utils/build-paths MY-BINARY-PATH '("dotnet")))
            (the-dotnet
              (my-utils/find-files dotnet-files)))
      (not (null the-dotnet)))))
