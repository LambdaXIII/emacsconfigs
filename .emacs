(setq inhibit-startup-message t)
(setq column-number-mode t) 
(setq mouse-yank-at-point t)

(setq default-fill-column 60)
(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

(setq scroll-margin 3
      scroll-conservatively 10000)
(setq default-major-mode 'text-mode)
(show-paren-mode t)
(setq show-paren-style 'parentheses)
(mouse-avoidance-mode 'animate)
(setq frame-title-format "emacs@%b")
(auto-image-file-mode)


(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t) 
 (add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t) 
;shell模式颜色

;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-high-contrast)

(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-s M-b") 'speedbar)


;(add-to-list 'load-path "/usr/share/emacs/site-lisp/emhacks")
(add-to-list 'load-path
                    "~/.emacs.d")       
(load "auctex.conf.el")
(load "orgmode.conf.el")
;;(load "mew.conf.el")
;(load "tabbar.conf.el")
(load "emms.conf.el")
(load "pkgbuildmode.conf.el")



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(delete-selection-mode nil)
 '(ido-mode (quote both) nil (ido))
 '(imenu-use-markers t)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "文泉驿等宽正黑")))))
