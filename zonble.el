(setq diary-file "~/Dropbox/.diary")

(defun open-ticket (input)
  (interactive "sTicket:")
  (let ((url (concat "https://issue.kkcorp/trac/ticket/" input)))
    (browse-url url)))

(defun osstatus-to-string (number)
  "Convert osstatus"
  (interactive "nOSStatus:")
  (let* ((a (logand (lsh number -24) 255))
         (b (logand (lsh number -16) 255))
         (c (logand (lsh number -8) 255))
         (d (logand (lsh number 0) 255)))
    (message (format "Output: %c%c%c%c" a b c d))))

(defun string-to-osstatus (input)
  (interactive "sString:")
  (let* ((a (string-to-char (substring input 0 1)))
         (b (string-to-char (substring input 1 2)))
         (c (string-to-char (substring input 2 3)))
         (d (string-to-char (substring input 3 4)))
         (r (+ (lsh a 24) (lsh b 16) (lsh c 8) d)))
    (message "OSStatus:%d" r)))

(defun now ()
  "Insert string for the current time formatted like '2:34 PM'."
  (interactive)                      ; permit invocation in minibuffer
  (insert (format-time-string "%D %-I:%M %p")))

(defun kk-header ()
  "Insert the header template for KKBOX project."
  (interactive)
  (insert (format
		   "//\n// %s\n//\n// %s\n//"
		   (file-name-nondirectory (buffer-file-name))
		   "Copyright (c) 2008-2013 KKBOX Taiwan Co., Ltd. All Rights Reserved.")))

(defun today ()
  "Insert string for today's date nicely formatted in American style,
e.g. Sunday, September 17, 2000."
  (interactive)                      ; permit invocation in minibuffer
  (insert (format-time-string "%A, %B %e, %Y")))

(setq inhibit-startup-message t)

; ispell

(setq-default ispell-program-name "/usr/local/bin/ispell")
(setq-default ispell-list-command "list")

;; Define keys
(if (featurep 'ns)
    (progn (global-set-key [(super right)] 'move-end-of-line)
           (global-set-key [(super left)] 'move-beginning-of-line)
           (global-set-key [(super up)] 'beginning-of-buffer)
           (global-set-key [(super down)] 'end-of-buffer)
           (global-set-key [(super return)] 'ns-toggle-fullscreen)
           (global-set-key [(super w)] 'kill-buffer-and-window)
           (global-set-key [(super =)] 'text-scale-increase)
           (global-set-key [(super +)] 'text-scale-increase)
           (global-set-key [(super -)] 'text-scale-decrease)
           (global-set-key [(super _)] 'text-scale-decrease)))

(defun arrange-frame (w h x y)
  "Set the width, height, and x/y position of the current frame"
  (let ((frame (selected-frame)))
    (delete-other-windows)
    (set-frame-position frame x y)
    (set-frame-size frame w h)))

(eval-when-compile (require 'cl))
(defun set-font (english chinese english-size chinese-size)
  (set-face-attribute 'default nil :font
                      (format "%s:pixelsize=%d" english english-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family chinese :size chinese-size))))

;; Set custom font.
(if (featurep 'ns)
    (progn (arrange-frame 80 27 10 20)
           (set-font "Monaco" "LiHei Pro" 20 24)))

(set 'org-latex-to-pdf-process
     '("xelatex -interaction nonstopmode %f"
       "xelatex -interaction nonstopmode %f"
       "xelatex -interaction nonstopmode %f"))

(add-to-list 'trac-projects '("kkbox" :endpoint "https://issue.kkcorp/trac/xmlrpc"))
(setq ns-pop-up-frames nil)


(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
