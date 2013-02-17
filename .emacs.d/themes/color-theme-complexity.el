(defun color-theme-complexity ()
  (interactive)
  (color-theme-install
   '(color-theme-complexity
      ((background-color . "#000000")
       (foreground-color . "#C0C0C0")
       (background-mode . light)
       (border-color . "#262626")
       (cursor-color . "#464646")
       (mouse-color . "black"))
      (fringe ((t (:background "#262626"))))
      (mode-line ((t (:foreground "#ffffff" :background "#00aa00"))))
      (region ((t (:background "#262626"))))
      (font-lock-builtin-face ((t (:foreground "#00cc00"))))
      (font-lock-comment-face ((t (:foreground "#707070"))))
      (font-lock-function-name-face ((t (:foreground "#00ff00"))))
      (font-lock-keyword-face ((t (:foreground "#00ff00"))))
      (font-lock-string-face ((t (:foreground "#00bb00"))))
      (font-lock-type-face ((t (:foreground"#ffffff"))))
      (font-lock-variable-name-face ((t (:foreground "#ffffff"))))
      (font-lock-constant-face ((t (:foreground "#fffff"))))
      (minibuffer-prompt ((t (:foreground "#00ff00" :bold t))))
      (font-lock-warning-face ((t (:foreground "#ff0000" :bold t))))
     )))

(provide 'color-theme-complexity)
