;;; config-loader.el
;;; this file is based on debian-startup.el

;; Copyright (C) 1998 Rob Browning

;; Maintainer: Rob Browning <rlb@defaultvalue.org>
;; Keywords: debian

;; This file is part of the debian release of GNU Emacs, and will
;; be contributed to the FSF after testing. It is released under the same
;; terms, namely the GPL v2 or later.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; Commentary:

;; This file contains startup code needed by all the various flavors
;; of Emacs for a Debian system.

;; Rewritten to less elegant -- non recursive version because elisp
;; doesn't seem to handle tail recursion :<
(defun my-unique-strings (strings) 
  "Takes a list of strings and returns the list with *adjacent*
duplicates removed."
  (let ((result '()))
    (while (consp strings)
      (if (not (string= (car strings) (car (cdr strings))))
          (setq result (cons (car strings) result)))
      (setq strings (cdr strings)))
    (nreverse result)))

(defun my-run-directories (&rest dirs)

  "Load each file of the form XXfilename.el or XXfilename.elc in any
of the dirs, where XX must be a number.  The files will be run in
alphabetical order.  If a file appears in more than one of the dirs,
then the earlier dir takes precedence, and a .elc file always
supercedes a .el file of the same name."

  (let* ((paths dirs)
         ;; Get a list of all the files in all the specified
         ;; directories that match the pattern.
         (files
          (apply 'append 
                 (mapcar 
                  (lambda (dir) 
                    (directory-files dir nil "^[0-9][0-9].*\\.elc?$" t))
                  paths)))
         
         ;; Now strip the directory portion, remove any .el or .elc
         ;; extension.
         
         (stripped-names
          (mapcar (lambda (file) 
                    (if (string-match "\\.el$" file)
                        (substring file 0 -3)
                      (if (string-match "\\.elc$" file)
                          (substring file 0 -4)
                        file)))
                  (mapcar 
                   (lambda (file) (file-name-nondirectory file))
                   files)))
         
         ;; Finally sort them, and delete duplicates
         (base-names (my-unique-strings (sort stripped-names 'string<)))
         
         (old-load-path load-path))

    ;; Set a new load path with the directories specified in the
    ;; proper order, and first.
    (let ((new-path (append paths load-path)))
      (setq load-path new-path)
      ;; Now load the files.  "load" will make sure we get the byte
      ;; compiled one first, if any, and will respect load-path's
      ;; ordering.
      (mapcar
       (lambda (file)
         (condition-case ()
             (load file nil)
           (error (message "Error while loading %s" file))))
       base-names)
      ;; restore the old load-path -- including any new paths added by
      ;; files loaded in directory traversal.
      (let ((add-on-package-paths 
             (delq nil (mapcar
                        (lambda (item)
                          (if (not (member item new-path))
                              item
                            nil))
                        load-path))))      
        (setq load-path (append add-on-package-paths old-load-path))))))
