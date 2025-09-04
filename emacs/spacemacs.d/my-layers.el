(defconst my/COMPLETION-LAYERS
  '((auto-completion :variables
      auto-completion-enable-help-tooltip nil
      auto-completion-enable-snippets-in-popup nil
      auto-completion-use-company-box t)
     syntax-checking
     (helm :variables
       helm-enable-auto-resize t
       helm-use-posframe nil)))
;; (ivy :variables
;;      ivy-enable-advanced-buffer-information t
;;      ivy-enable-icons t)))

(defconst my/WEB-DEVEL-LAYERS
  '(javascript typescript json react html))

(defconst my/LISP-DEVEL-LAYERS
  (let ((the-layers
          '(emacs-lisp
             common-lisp
             racket
             (scheme :variables scheme-implementations '(chez)))))
    (if my/HAS-CLOJURE
      (cons 'clojure the-layers)
      the-layers)))

(defconst my/DOTNET-DEVEL-LAYERS
  (if my/HAS-DOTNET
    '((fsharp :variables fsharp-backend 'lsp)
       (csharp :variables csharp-backend 'lsp))
    nil))
(defconst my/JAVA-DEVEL-LAYERS
  (if my/HAS-JAVA
    '(java
       ;;(groovy :variables groovy-backend 'lsp)
       (kotlin :vaiables kotlin-backend 'lsp))
    nil))

(defconst my/CPP-DEVEL-LAYERS
  '(gpu
     (c-c++ :variables c-c++-enable-clang-support t)
     (rust :variables
       lsp-rust-analyzer-cargo-auto-reload t
       rustic-format-on-save t)
     (cmake :variables cmake-backend 'company-cmake
       cmake-enable-cmake-ide-support t)))

(defconst my/COMMON-DEVEL-LAYERS
  '(yaml sql erlang
     (shell :variables shell-default-height 30 shell-default-position 'bottom)
     (ruby :variables ruby-backend 'lsp)))



(defconst my/DEVEL-TOOLS-LAYERS
  '((lsp :variables lsp-use-lsp-ui t)
     git version-control))

(defconst my/COMMON-LAYERS
  '(markdown treemacs))

(defconst my/LAYERS
  (append
    my/COMMON-LAYERS
    my/DEVEL-TOOLS-LAYERS
    my/COMMON-DEVEL-LAYERS
    my/CPP-DEVEL-LAYERS
    my/LISP-DEVEL-LAYERS
    my/DOTNET-DEVEL-LAYERS
    my/JAVA-DEVEL-LAYERS
    my/WEB-DEVEL-LAYERS
    my/COMPLETION-LAYERS))
