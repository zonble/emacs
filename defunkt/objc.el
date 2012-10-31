(add-hook 'objc-mode-hook
	(lambda () 
	  (set (make-local-variable 'tab-width) 4)
	  (set (make-local-variable 'indent-tabs-mode) t)
	  (set (make-local-variable 'c-basic-offset) 4) 
	  ))

