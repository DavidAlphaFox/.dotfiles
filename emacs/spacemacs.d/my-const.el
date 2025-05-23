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
;;(defconst my/LUA
;;  (let* ((lua-binaries '("lua" "lua54" "lua53" "lua52"))
;;          (lua-files (my/build-paths my/BINARY-PATH lua-binaries))
;;          (the-lua (my/find-files lua-files)))
;;    (when (not (null the-lua)) (car the-lua))))

(defconst my/HAS-DOTNET
  (let* ((dotnet-files
          (my/build-paths my/BINARY-PATH '("dotnet")))
         (the-dotnet (my/find-files dotnet-files)))
    (not (null the-dotnet))))

(defconst my/HAS-CLOJURE
  (let* ((clojure-files
          (my/build-paths my/BINARY-PATH '("clojure")))
         (the-clojure (my/find-files clojure-files)))
    (not (null the-clojure))))

(defconst my/HAS-JAVA
  (let* ((java-files (my/build-paths my/BINARY-PATH '("java")))
         (the-java (my/find-files java-files)))
    (or
     (not (null the-java))
     (getenv "JAVA_CMD")
     (getenv "JAVA_HOME"))))
