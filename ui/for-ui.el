(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(global-hl-line-mode 1)

(display-time-mode 1)
(setq display-time-24hr-format 1)
(setq display-time-day-and-date 1)
(setq display-time-use-mail-icon 1)
(setq display-time-interval 10)
(setq display-time-format "%m月%d日 %H:%M")
(display-time)

(column-number-mode t)

(pstt-package-install 'solarized-theme)
(load-theme 'solarized-dark t)

(set-face-attribute
  'default nil :font "Source Code Pro")

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'for-ui)
