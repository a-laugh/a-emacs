(setq make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)

(pstt-package-install 'window-numbering)
(window-numbering-mode 1)

(pstt-package-install 'swiper)
(ivy-mode 1)
(pstt-package-install 'counsel)
(global-company-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 30)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(provide 'for-base-operate)
