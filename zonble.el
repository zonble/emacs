; Custom functions

(defun now ()
  "Insert string for the current time formatted like '2:34 PM'."
  (interactive)						 ; permit invocation in minibuffer
  (insert (format-time-string "%D %-I:%M %p")))

(defun today ()
  "Insert string for today's date nicely formatted in American style,
e.g. Sunday, September 17, 2000."
  (interactive)						 ; permit invocation in minibuffer
  (insert (format-time-string "%A, %B %e, %Y")))

(setq inhibit-startup-message t)

; ispell

(setq-default ispell-program-name "/usr/local/bin/ispell")
(setq-default ispell-list-command "list")

(setq diary-file "~/Dropbox/.diary")
