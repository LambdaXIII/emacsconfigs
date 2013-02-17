;auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(mapc (lambda (mode)
      (add-hook 'LaTeX-mode-hook mode))
      (list 'auto-fill-mode
            'LaTeX-math-mode
            'turn-on-reftex
            'linum-mode))
(add-hook 'LaTeX-mode-hook
           (lambda ()
             (setq TeX-auto-untabify t     ; remove all tabs before saving
                   TeX-engine 'xetex       ; use xelatex default
                   TeX-show-compilation t) ; display compilation windows
             (setq TeX-global-PDF-mode t)       ; PDF mode enable, not plain
             (setq TeX-save-query nil)
	   ;  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
	    ; (setq TeX-command-default "XeLaTeX") 
             (imenu-add-menubar-index)
             (define-key LaTeX-mode-map (kbd "TAB") 'TeX-complete-symbol)
))
