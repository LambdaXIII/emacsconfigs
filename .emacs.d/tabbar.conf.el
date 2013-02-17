(require 'tabbar)
(tabbar-mode) ;comment out this line to start without the tab on top
(global-set-key [(control shift h)] 'tabbar-mode)
(global-set-key [(control shift up)] 'tabbar-backward-group)
(global-set-key [(control shift down)] 'tabbar-forward-group)
(global-set-key [(control shift left)] 'tabbar-backward)
(global-set-key [(control shift right)] 'tabbar-forward)
(global-set-key [(control next)] 'tabbar-forward-tab)
(global-set-key [(control prior)] 'tabbar-backward-tab)