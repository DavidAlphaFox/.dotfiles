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

(defconst HAS-CLOJURE
  (cond
    ((or IS-MAC IS-LINUX) t)
    (t (let* ((clojure-files
             (my-utils/build-paths MY-BINARY-PATH '("clojure")))
            (the-clojure
              (my-utils/find-files clojure-files)))
      (not (null the-clojure))))))

(defconst HAS-JAVA
  (cond
    ((or IS-MAC IS-LINUX) t)
    (t (let* ((java-files
             (my-utils/build-paths MY-BINARY-PATH '("java")))
            (the-java
              (my-utils/find-files java-files)))
      (not (null the-java))))))
