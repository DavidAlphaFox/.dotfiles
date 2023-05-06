(defconst my/COMPLETION-LAYERS
  '((auto-completion :variables
                     auto-completion-enable-help-tooltip nil
                     auto-completion-enable-snippets-in-popup nil
                     auto-completion-use-company-box t)
    syntax-checking
    helm))
;;    (ivy :variables
;;	    ivy-enable-advanced-buffer-information t
;;	    ivy-enable-icons t)))

(defconst my/WEB-DEVEL-LAYERS
  '(javascript typescript json react html))

(defconst my/LISP-DEVEL-LAYERS
  (let ((the-layers
          '(emacs-lisp common-lisp racket
             (scheme :variables scheme-implementations '(racket guile chez)))))
    (if my/HAS-CLOJURE
      (cons 'clojure the-layers)
      the-layers)))

(defconst my/COMMON-DEVEL-LAYERS
  (let ((the-layers
          '(yaml sql erlang rust ocaml 
             (shell :variables shell-default-height 30 shell-default-position 'bottom)
             (c-c++ :variables c-c++-enable-clang-support t)
             (python :variables python-backend 'lsp))))
    (when my/LUA (setq the-layers (cons '(lua :variables lua-backend 'lsp lua-lsp-server 'lua-language-server) 
					the-layers)))
    (when my/HAS-JAVA (setq the-layers (cons 'java the-layers)))
    the-layers))


(defconst my/DEVEL-TOOLS-LAYERS
  '((lsp :variables lsp-use-lsp-ui t)
     git version-control))

(defconst my/COMMON-LAYERS
  '(markdown multiple-cursors org treemacs))

(defconst my/LAYERS
  (append
    my/COMMON-LAYERS
    my/DEVEL-TOOLS-LAYERS
    my/COMMON-DEVEL-LAYERS
    my/LISP-DEVEL-LAYERS
    my/WEB-DEVEL-LAYERS
    my/COMPLETION-LAYERS))
