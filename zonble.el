(setq diary-file "~/Dropbox/.diary")

; Custom functions
(defun z-presentation ()
  (interactive)
  (progn
	(set-frame-font
	 "-outline-Courier New-normal-normal-normal-mono-25-*-*-*-c-*-iso8859-1")
	(ns-toggle-fullscreen)))

(defun z-editor ()
  (interactive)
  (progn
	(set-frame-font
	 "-outline-Courier New-normal-normal-normal-mono-18-*-*-*-c-*-iso8859-1")
	(ns-toggle-fullscreen)))

(defun osstatus (number)
  "Convert osstatus"
  (interactive "nOSStatus:")
  (let* ((a (logand (lsh number -24) 255))
         (b (logand (lsh number -16) 255))
         (c (logand (lsh number -8) 255))
         (d (logand (lsh number 0) 255)))
    (message (format "Output: %c%c%c%c" a b c d))))

(defun now ()
  "Insert string for the current time formatted like '2:34 PM'."
  (interactive)                      ; permit invocation in minibuffer
  (insert (format-time-string "%D %-I:%M %p")))

(defun today ()
  "Insert string for today's date nicely formatted in American style,
e.g. Sunday, September 17, 2000."
  (interactive)                      ; permit invocation in minibuffer
  (insert (format-time-string "%A, %B %e, %Y")))

(setq inhibit-startup-message t)

; ispell

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


;; Define keys
(if (featurep 'ns)
	(progn (global-set-key [(super right)] 'move-end-of-line)
		   (global-set-key [(super left)] 'move-beginning-of-line)
		   (global-set-key [(super up)] 'beginning-of-buffer)
		   (global-set-key [(super down)] 'end-of-buffer)
		   (global-set-key [(super return)] 'ns-toggle-fullscreen)
		   (global-set-key [(super w)] 'kill-buffer-and-window)
		   (define-key evernote-mode-map [(super s)] 'evernote-save-note)))

(eval-when-compile (require 'cl))

(defun set-font (english chinese english-size chinese-size)
  (set-face-attribute 'default nil :font
					  (format "%s:pixelsize=%d" english english-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
	(set-fontset-font (frame-parameter nil 'font) charset
					  (font-spec :family chinese :size chinese-size))))

(set-font "Monaco" "LiHei Pro" 20 24)
