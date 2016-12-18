;; customization
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wheatgrass)))
 '(erc-modules
   (quote
	(autojoin button completion fill irccontrols match menu netsplit noncommands readonly ring scrolltobottom stamp track)))
 '(javascript-shell-command "jsc")
 '(js2-auto-indent-flag nil)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-flag t)
 '(js2-enter-indents-newline t)
 '(js2-strict-missing-semi-warning nil)
 '(org-agenda-files (quote ("~/Dropbox/org/week.org" "~/Dropbox/org/home.org")))
 '(python-honour-comment-indentation nil)
 '(ruby-deep-arglist nil)
 '(ruby-deep-indent-paren nil)
 '(ruby-deep-indent-paren-style nil)
 '(standard-indent 4xs)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(emacs-lisp-mode-default ((t (:inherit autoface-default))) t)
 '(js2-mode-default ((t (:inherit autoface-default))) t)
 '(minibuffer-prompt ((((background dark)) (:foreground "cyan" :height 180))))
 '(mode-line ((t (:inherit aquamacs-variable-width :background "grey75" :foreground "black" :width normal))))
 '(rst-level-1-face ((t (:background "dark red"))) t)
 '(rst-level-2-face ((t (:background "dark red"))) t)
 '(rst-level-3-face ((t (:background "dark red"))) t)
 '(rst-level-4-face ((t (:background "dark red"))) t)
 '(rst-level-5-face ((t (:background "dark red"))) t)
 '(rst-level-6-face ((t (:background "dark red"))) t)
 '(text-mode-default ((t (:inherit autoface-default))) t))

;; (set-face-attribute 'default nil :family "Monaco" :height 180 :weight 'normal)
