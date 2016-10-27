(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default cursor-type 'bar)
(setq inhibit-splash-screen 1)
(global-hl-line-mode 1)

(al-package-install 'solarized-theme)
(load-theme 'solarized-light t)

;; (set-face-attribute 'default nil :height 140)
(set-frame-font "Bitstream Vera Sans Mono-12")
(set-fontset-font (frame-parameter nil 'font)
		  'unicode '("WenQuanYi Micro Hei Mono" . "unicode-bmp"))

(setq initial-frame-alist (quote ((fullscreen . maximized))))

(provide 'init-ui)
