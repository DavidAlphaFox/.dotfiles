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
  '(javascript typescript json react html
     (ruby :variables ruby-backend 'lsp)))

(defconst my/LISP-DEVEL-LAYERS
  '(emacs-lisp common-lisp
     (scheme :variables scheme-implementations '(chez))))

(defconst my/DOTNET-DEVEL-LAYERS
  '((csharp :variables csharp-backend 'lsp)))

(defconst my/JAVA-DEVEL-LAYERS
  '(java clojure
     (kotlin :variables kotlin-backend 'lsp)))

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
     (shell :variables
       shell-default-height 30
       shell-default-position 'bottom)))

(defconst my/COMMON-LAYERS
  '(markdown treemacs
     (lsp :variables lsp-use-lsp-ui t)
     git version-control))

(defconst my/LAYERS
  (append
    my/COMMON-LAYERS
    my/COMMON-DEVEL-LAYERS
    my/CPP-DEVEL-LAYERS
    my/LISP-DEVEL-LAYERS
    (when my/HAS-DOTNET my/DOTNET-DEVEL-LAYERS)
    (when my/HAS-JAVA   my/JAVA-DEVEL-LAYERS)
    my/WEB-DEVEL-LAYERS
    my/COMPLETION-LAYERS))
