(require 'cl-lib)

(defun my-utils/build-paths (paths files)
  (flatten-list
    (map 'list
      (lambda (path)
        (map 'list (lambda (version)
                     (concat path version))
          files))
      paths)))

(defun my-utils/find-files (locations)
  (cl-remove-if-not #'file-exists-p locations))


