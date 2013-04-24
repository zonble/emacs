(defun org-insert-trac-ticket-number (number)
  "Insert KKBOX trac ticket number"
  (interactive "nTicket Number:")
  (insert (format "[[https://issue.kkcorp/trac/ticket/%d][#%d]]" number number)))

(defun org-insert-chinese-latex-header ()
  (interactive)
  (insert
   "#+LaTeX_CLASS_OPTIONS: [article, a4paper, times, 12pt]\n"
   "#+LATEX_HEADER: \\usepackage{fontspec}\n"
   "#+LATEX_HEADER: \\usepackage{xeCJK}\n"
   "#+LATEX_HEADER: \\setmainfont{Times}\n"
   "#+LATEX_HEADER: \\setCJKmainfont[BoldFont=LiGothicMed, ItalicFont=BiauKai]{LiSungLight}\n"
   "#+LATEX_HEADER: \\setCJKmonofont{Osaka-Mono}\n"
   "#+LATEX_HEADER: \\setCJKsansfont{LiGothicMed}\n"))

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
(global-set-key "\C-ct" 'org-insert-trac-ticket-number)

(set 'org-latex-to-pdf-process '("/usr/local/texlive/2012/bin/universal-darwin/xelatex %f"))
