(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(global-hl-line-mode 1)

(al-package-install 'solarized-theme)
(load-theme 'solarized-dark t)

(set-face-attribute 'default nil :height 160)

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
