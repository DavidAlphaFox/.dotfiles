;;; company-ghci.el --- company backend which uses the current ghci process.

;; Author: Hector Orellana <hofm92@gmail.com>
;; Package-Requires: ((company "0.8.11") (haskell-mode "13"))
;; Package-Version: 20150301.1942
;; Package-X-Original-Version: 0.03

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;;; Usage:

;; (require 'company-ghci)
;; (add-to-list 'company-backends 'company-ghci)
;; (add-hook 'haskell-mode-hook 'company-mode)

;;; Code:

(require 'cl-lib)
(require 'company)
(require 'haskell)
(require 'haskell-process)

(defun company-ghci/chomp (str)
	"Remove trailing newline in STR."
	(replace-regexp-in-string "\n$" "" str))

(defun company-ghci/repl-command (cmd)
	(when (haskell-session-maybe)
		(let ((response (company-ghci/chomp (haskell-process-queue-sync-request
																				 (haskell-process)
																				 cmd))))
			(unless (and (stringp response)
									 (string-match "interactive" response))
				response))))

(defun company-ghci/get-signature (function)
	"Uses the :t repl command to get the signature of FUNCTION."
	(company-ghci/repl-command (concat ":t " function)))

(defun company-ghci/is-valid-completion (completion to-complete)
	(string-match to-complete completion))

(defun company-ghci/get-completions (to-complete)
	(when (haskell-session-maybe)
		(remove-if-not (lambda (a) (company-ghci/is-valid-completion a to-complete))
									 (haskell-process-get-repl-completions (haskell-process)
																												 to-complete))))

;;;###autoload
(defun company-ghci (command &optional arg &rest ignored)
	"Company backend that provides completions using the current ghci process."
	(interactive (list 'interactive))
	(cl-case command
		(interactive (company-begin-backend 'company-ghci))
		(prefix  (and (haskell-session-maybe) (company-grab-symbol)))
		(candidates (company-ghci/get-completions arg))
		(meta (company-ghci/get-signature arg))))

(provide 'company-ghci)
;;; company-ghci.el ends here
