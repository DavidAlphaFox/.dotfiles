(require 'seq)
(defun my/build-paths (paths files)
  (flatten-list
   (seq-map
    (lambda (path)
      (seq-map (lambda (file)
                (expand-file-name file path))
              files))
    paths)))

(defun my/find-files (locations)
  (seq-filter #'file-exists-p locations))