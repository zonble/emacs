(add-hook 'python-mode-hook
		  (lambda ()
			(define-key python-mode-map "\C-m"
			  'python-reindent-then-newline-and-indent)
			(add-hook 'local-write-file-hooks
					  '(lambda()
						 (save-excursion
						   (delete-trailing-whitespace))))
			(set (make-local-variable 'tab-width) 4)
			(set (make-local-variable 'python-indent) 4)
			(set (make-local-variable 'indent-tabs-mode) t)))

(defun python-reindent-then-newline-and-indent ()
  "Reindents the current line then creates an indented newline."
  (interactive "*")
  (newline)
  (save-excursion
	(end-of-line 0)
	(indent-according-to-mode)
	(delete-region (point) (progn (skip-chars-backward " \t") (point))))
  (when (python-previous-line-is-comment)
	  (insert "# "))
  (indent-according-to-mode))

(defun python-previous-line-is-comment ()
  "Returns `t' if the previous line is a Python comment."
  (save-excursion
	(forward-line -1)
	(python-line-is-comment)))

(defun python-line-is-comment ()
  "Returns `t' if the current line is a Python comment."
  (save-excursion
	(beginning-of-line)
	(search-forward "#" (point-at-eol) t)))
