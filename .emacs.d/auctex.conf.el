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

(setq TeX-parse-self t)
;在启动TeX主文件时，如果没有对应的.el文件，则分析自己包含的宏文件，然后在当前文件所在目录的auto子目录下建立当前文件名对应的.el文件供分析，自动补全之用！：〕
(setq TeX-auto-save t)
;主tex文件存盘时，分析主文件，保存相应auto下的.el文件！
(setq TeX-electric-escape t)
;输入``\''就会进入补全模式, 不过缺省的补全会自动加上{}光标停在中间,很方便的说，赞:) 
