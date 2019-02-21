(setq make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)
(delete-selection-mode 1)

(use-package window-numbering
  :init (pstt-package-install 'window-numbering)
  :config (window-numbering-mode 1))

(pstt-package-install 'swiper)
(ivy-mode 1)
(pstt-package-install 'counsel)
(global-company-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(use-package recentf
  :config (recentf-mode 1)
  (setq recentf-max-menu-item 30)
  (global-set-key (kbd "C-x C-r") 'recentf-open-files))


(use-package undo-tree
  :init (pstt-package-install 'undo-tree)
  :config (global-undo-tree-mode))

(provide 'for-base-operate)
