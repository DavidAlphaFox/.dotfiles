;;; ../.dotfiles/emacs/doom.d/my-init.el -*- lexical-binding: t; -*-
(load! "my-core.el")

(defconst my/BINARY-PATH '("~/.local/bin/"
                           "~/bin/"
                           "/usr/local/bin/"
                           "/usr/local/sbin/"
                           "/usr/bin/"
                           "/usr/sbin/"))
(defconst my/LUA
  (let* ((lua-files
          (my/build-paths my/BINARY-PATH
                          '("lua" "lua54" "lua53" "lua52")))
          (the-lua
           (my/find-files lua-files)))
    (if (not (null the-lua))
        (car the-lua)
      nil)))

(defconst my/HAS-CLOJURE
  (cond
    ((or IS-MAC IS-LINUX) t)
    (t (let* ((clojure-files
               (my/build-paths my/BINARY-PATH '("clojure")))
              (the-clojure
               (my/find-files clojure-files)))
         (not (null the-clojure))))))

(defconst my/HAS-JAVA
  (cond
   ((or IS-MAC IS-LINUX) t)
   (t (let* ((java-files
              (my/build-paths my/BINARY-PATH '("java")))
            (the-java
             (my/find-files java-files)))
        (not (null the-java))))))

(defconst my/HAS-RUBY
  (let* ((ruby-files (my/build-paths my/BINARY-PATH '("ruby")))
	(the-ruby (my/find-files ruby-files)))
    (not (null the-ruby))))

