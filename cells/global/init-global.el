(al-package-install 'company)
(global-company-mode 1)

(al-package-install 'swiper)
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "C-s") 'swiper)

(al-package-install 'counsel)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-load-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)

(al-package-install 'undo-tree)
(require 'undo-tree)
(global-undo-tree-mode)

(al-package-install 'window-numbering)
(window-numbering-mode 1)

(al-package-install 'multiple-cursors)
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(electric-pair-mode 1)

(al-package-install 'expand-region)
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(setq make-backup-files nil)

(fset 'yes-or-no-p 'y-or-n-p)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)
(global-set-key (kbd "C-x C-r") 'recentf-open-files)

(delete-selection-mode 1)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(defun al-open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2>") 'al-open-init-file)

(provide 'init-global)
