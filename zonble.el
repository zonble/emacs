(defun now ()
  "Insert string for the current time formatted like '2:34 PM'."
  (interactive)                      ; permit invocation in minibuffer
  (insert (format-time-string "%D %-I:%M %p")))

(defun today ()
  "Insert string for today's date nicely formatted in American style,
e.g. Sunday, September 17, 2000."
  (interactive)                      ; permit invocation in minibuffer
  (insert (format-time-string "%A, %B %e, %Y")))

(setq-default ispell-program-name "/usr/local/bin/ispell")
(setq-default ispell-list-command "list")
(setq org-log-done t)
(setq org-directory "~/Dropbox/org")
(setq org-agenda-files (list "~/Dropbox/org/work.org"
                             "~/Dropbox/org/week.org"
                             "~/Dropbox/org/home.org"))

(defun arrange-frame (w h x y)
  "Set the width, height, and x/y position of the current frame"
  (let ((frame (selected-frame)))
    (delete-other-windows)
    (set-frame-position frame x y)
    (set-frame-size frame w h)))

(arrange-frame 80 30 10 20)
