(defun org-insert-trac-ticket-number (number)
  "Insert KKBOX trac ticket number"
  (interactive "nTicket Number:")
  (insert (format "[[https://issue.kkcorp/trac/ticket/%d][#%d]]" number number)))

; org mode
(set 'org-log-done t)
(set 'org-directory "~/Dropbox/org")
(set 'org-agenda-files (list "~/Dropbox/org/work.org"
							 "~/Dropbox/org/week.org"
							 "~/Dropbox/org/home.org"))

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(global-set-key "\C-cy" 'org-insert-trac-ticket-number)
