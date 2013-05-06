(defun flymake-acceptance-test(root-dir)
   (let* ((counts        (flymake-acceptance-test-impl root-dir 0))
		  (ok-count      (nth 0 counts))
		  (checked-count (nth 1 counts)))
	   (if (not (= checked-count ok-count))
		   (error "acceptance test failed, only %d out of %d file(s) were checked OK" ok-count checked-count)
	   ;else
    	   (flymake-log 0 "%s file(s) checked OK" checked-count)			  
	   )
   )
)
  
(defun flymake-acceptance-test-impl(root-dir level)
    "find checkable files from root-dir, run sytax check for them and verify against expected error messages"
	(let* ((files-and-dirs  (directory-files root-dir))
		   (count           (length files-and-dirs))
		   (idx             0)
		   (ok-count        0)
		   (checked-count   0))
	    (while (< idx count)
		    (let* ((name  (nth idx files-and-dirs))
				   (path  (concat root-dir "/" name))
				   (dot-pos (string-match "\\." name)))
			    (when (or (not dot-pos) (not (eq 0 dot-pos)))
				    (if (file-directory-p path)
						(let* ((this-counts (flymake-acceptance-test-impl path (1+ level))))
						    (setq ok-count      (+ ok-count      (nth 0 this-counts)))
							(setq checked-count (+ checked-count (nth 1 this-counts)))
						)
					;else
					    (progn
						    (when  (flymake-can-syntax-check-file path)
						        (setq checked-count (1+ checked-count))
					            (if (flymake-acceptance-check-file path)
							        (setq ok-count (1+ ok-count))
						        )
							)
						)
					)
				)
			)
			(setq idx (1+ idx))
		)
		(list ok-count checked-count)
	)
)

(defun flymake-acceptance-check-file(file)
    "run test for a single file"
	(let* ((file-name   (flymake-fix-path-name file))
		   (checked-ok  t))

		(save-excursion
			(find-file file-name)
			(flymake-mode 1)

            ;(sleep-for 2) ;(accept-process-output nil 2 0)
			(sit-for 1)
			(sit-for 1)
			(sit-for 1)

			(let* ((real-err-info      (flymake-get-buffer-err-info (current-buffer)))
				   (expected-err-info  (flymake-acceptance-get-expected-err-info (current-buffer))))
				(setq checked-ok (equal expected-err-info real-err-info))
				(when (not checked-ok)
					(flymake-log 0 "--- file %s, exp =%s, real=%s" file expected-err-info real-err-info)
				)
			)	

			(kill-buffer (current-buffer))
		)
		checked-ok
	)
)

(defun flymake-acceptance-get-expected-err-info(buffer)
    "extract error info from comments"
	(save-excursion
	    (set-buffer buffer)
		(let* ((line-count  (flymake-count-lines buffer))
			   (line        1)
			   (marker      "####")
			   (err-info    nil))

		    (goto-char (point-min))
			(while (<= line line-count)
			    (flymake-goto-line line)
				(let* ((line-end  (line-end-position))
					   (found     (re-search-forward marker line-end t)))
				    (when found
						(let* ((code-start (point))
							   (code-end   line-end))
							(flymake-log 0 "executing %s" (buffer-substring code-start code-end))

							; next must store line-err-info in a special variable
							(setq flymake-acc-ler nil)
							(eval-region code-start code-end)

							(setq flymake-acc-ler (flymake-ler-set-full-file flymake-acc-ler
												   (flymake-fix-path-name
													(concat (file-name-directory (buffer-file-name buffer)) "/"
															(flymake-ler-get-full-file flymake-acc-ler)))))
							;+(flymake-log 0 "got ler %s" flymake-acc-ler)

							(setq err-info (flymake-add-err-info err-info flymake-acc-ler))
						)
					)
				)
				(setq line (1+ line))
			)
			err-info
		)
	)
)

(eval-buffer nil nil)

;(flymake-acceptance-test "./samples/makefull/java/sources/net/sourceforge/flymake/sample")
(flymake-acceptance-test "./samples")
