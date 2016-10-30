(al-package-install 'company)
(global-company-mode 1)

(ido-mode 1)

(al-package-install 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(electric-pair-mode 1)

(al-package-install 'avy)

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
