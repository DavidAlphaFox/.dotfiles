
(defconst my/IS-MAC     (eq system-type 'darwin))
(defconst my/IS-LINUX   (eq system-type 'gnu/linux))
(defconst my/IS-WINDOWS (memq system-type '(cygwin windows-nt ms-dos)))
(defconst my/IS-BSD     (eq system-type 'berkeley-unix))


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
    ((or my/IS-MAC my/IS-LINUX) t)
    (t (let* ((clojure-files
               (my/build-paths my/BINARY-PATH '("clojure")))
              (the-clojure
               (my/find-files clojure-files)))
         (not (null the-clojure))))))

(defconst my/HAS-JAVA
  (cond
   ((or my/IS-MAC my/IS-LINUX) t)
   (t (let* ((java-files
              (my/build-paths MY-BINARY-PATH '("java")))
            (the-java
             (my/find-files java-files)))
        (not (null the-java))))))
