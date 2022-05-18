(defconst my-layers/completion
  '((auto-completion :variables
                     auto-completion-enable-help-tooltip nil
                     auto-completion-enable-snippets-in-popup nil
                     auto-completion-use-company-box t)
    syntax-checking
    ;;(ivy :variables
    ;;  ivy-enable-advanced-buffer-information t
    ;;  ivy-enable-icons t)
    helm))

(defconst my-layers/web-devel
  '(javascript
    typescript
    react
    html))

(defconst my-layers/system-devel
  '((shell :variables
           shell-default-height 30
           shell-default-position 'bottom)
    (c-c++ :variables
           c-c++-enable-clang-support t)
    rust))

(defconst my-layers/lisp-devel
  (let ((lisp-layers
         '(emacs-lisp
           common-lisp
           racket
           (scheme :variables
                   scheme-implementations '(racket)))))
        (if (or IS-MAC IS-LINUX)
            (cons 'clojure lisp-layers)
          lisp-layers)))

(defconst my-layers/business-devel
  '(lua
    yaml
    sql
    erlang
    ocaml
    (python :variables python-backend 'lsp)))


(defconst my-layers/devel-tools
  '((lsp :variables
         lsp-use-lsp-ui t)
    git
    version-control))

(defconst my-layers/common
  '(markdown
    multiple-cursors
    org
    treemacs))

(defconst my-layers/dotspacemacs
  (append
    my-layers/common
    my-layers/devel-tools
    my-layers/business-devel
    my-layers/system-devel
    my-layers/lisp-devel
    my-layers/web-devel
    my-layers/completion))


