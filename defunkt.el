
(add-to-list 'load-path "~/.emacs.d/vendor")

; custom place to save customizations
(setq custom-file "~/.emacs.d/defunkt/custom.el")
(when (file-exists-p custom-file) (load custom-file))
(when (file-exists-p ".passwords") (load ".passwords"))

(load "defunkt/lisp")
(load "defunkt/global")
(load "defunkt/defuns")
(load "defunkt/bindings")
(load "defunkt/modes")
(load "defunkt/temp_files")
(load "defunkt/git")

(when (file-exists-p "defunkt/private")
  (load "defunkt/private"))

(vendor 'ooc-mode)
(vendor 'magit)
(vendor 'coffee-mode)
; (vendor 'lua-mode)
; (vendor 'any-ini-mode)
; (vendor 'mustache-mode)
; (vendor 'scss-mode)
(vendor 'rst)
(vendor 'php-mode)
(vendor 'writeroom-mode)
(vendor 'dash)
(vendor 'request)
(vendor 'cl-lib)
(vendor 'org-trello)
(vendor 'go-mode)
