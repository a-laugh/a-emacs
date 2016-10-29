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

(al-package-install 'solarized-theme)
(load-theme 'solarized-dark t)

(set-frame-font "Bitstream Vera Sans Mono-12")
(set-fontset-font (frame-parameter nil 'font)
		  'unicode '("WenQuanYi Micro Hei Mono" . "unicode-bmp"))

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
