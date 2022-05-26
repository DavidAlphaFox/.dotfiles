(require 'cl-lib)
(defun my-utils/find-files (locations)
  (cl-remove-if-not #'file-exists-p locations))


