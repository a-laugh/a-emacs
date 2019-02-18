;; put similar things together

(defun pstt-require-module (dir module)
  (add-to-list 'load-path
	       (expand-file-name dir user-emacs-directory))
  (require module))

;; for emacs package repo
(pstt-require-module "package" 'for-package)

;; for ui
(pstt-require-module "ui" 'for-ui)

;; for base-operate
(pstt-require-module "base-operate" 'for-base-operate)

;; for git
(pstt-require-module "git" 'for-git)

;; (add-to-list 'load-path (expand-file-name "common" user-emacs-directory))
;; (require 'init-common)

;; (add-to-list 'load-path (expand-file-name "cells" user-emacs-directory))
;; (require 'init-cells)

;; (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (when (file-exists-p custom-file)
;;   (load custom-file))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
