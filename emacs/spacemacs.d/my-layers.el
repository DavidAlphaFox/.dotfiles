(defconst my/COMPLETION-LAYERS
  '((auto-completion :variables
                     auto-completion-enable-help-tooltip nil
                     auto-completion-enable-snippets-in-popup nil
                     auto-completion-use-company-box t)
    syntax-checking
    (helm :variables
    helm-enable-auto-resize t)))
   ;; (ivy :variables
   ;;	    ivy-enable-advanced-buffer-information t
   ;;	    ivy-enable-icons t)))

(defconst my/WEB-DEVEL-LAYERS
  '(javascript typescript json react html))

(defconst my/LISP-DEVEL-LAYERS
  (let ((the-layers
          '(emacs-lisp common-lisp racket
             (scheme :variables scheme-implementations '(racket chez guile)))))
    (if my/HAS-CLOJURE
      (cons 'clojure the-layers)
      the-layers)))

(defconst my/CPP-DEVEL-LAYERS
   '(gpu
     (c-c++ :variables c-c++-enable-clang-support t)
     (cmake :variables cmake-backend 'company-cmake
		       cmake-enable-cmake-ide-support t)))

(defconst my/COMMON-DEVEL-LAYERS
  (let ((the-layers
          '(yaml sql erlang ocaml
             (shell :variables shell-default-height 30 shell-default-position 'bottom)
             (ruby :variables ruby-backend 'lsp)
             (python :variables python-backend 'lsp))))
;;    (when my/LUA (setq the-layers
;;                   (cons '(lua :variables lua-backend 'lsp lua-lsp-server 'lua-language-server)
;;					           the-layers)))
    (when my/HAS-JAVA
      (setq the-layers
        (append '(java)
                   ;;(groovy :variables groovy-backend 'lsp)
                   ;;(kotlin :variables kotlin-backend 'lsp))
          the-layers)))
    the-layers))


(defconst my/DEVEL-TOOLS-LAYERS
  '((lsp :variables lsp-use-lsp-ui t)
     git version-control))

(defconst my/COMMON-LAYERS
  '(markdown org treemacs))

(defconst my/LAYERS
  (append
    my/COMMON-LAYERS
    my/DEVEL-TOOLS-LAYERS
    my/COMMON-DEVEL-LAYERS
    my/CPP-DEVEL-LAYERS
    my/LISP-DEVEL-LAYERS
    my/WEB-DEVEL-LAYERS
    my/COMPLETION-LAYERS))
