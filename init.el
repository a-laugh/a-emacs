;; put similar things together

(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))

(defun pstt-package-install (package)
  (unless (package-installed-p package)
    (unless (assoc package package-alist)
      (package-refresh-contents)
      (package-install package))))

(pstt-package-install 'use-package)

;; for ui
(use-package for-ui
  :load-path "ui")

;; for base-operate
(use-package for-base-operate
  :load-path "base-operate")

;; for elisp
(use-package for-elisp
  :load-path "elisp")

;; for project
(use-package for-project
  :load-path "project")

;; for git
(use-package for-git
  :load-path "git")

;; for cpp
(use-package for-cpp
  :load-path "cpp")

;; (add-to-list 'load-path (expand-file-name "common" user-emacs-directory))
;; (require 'init-common)

;; (add-to-list 'load-path (expand-file-name "cells" user-emacs-directory))
;; (require 'init-cells)

;; (setq custom-file (expand-file-name "custom.el" user-emacs-directory))
;; (when (file-exists-p custom-file)
;;   (load custom-file))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (window-numbering use-package solarized-theme magit find-file-in-project cquery counsel company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
