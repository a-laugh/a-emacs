(setq gc-cons-threshold 64000000)
(add-hook 'after-init-hook #'(lambda ()
                               ;; restore after startup
                               (setq gc-cons-threshold 800000)))

(if (and (fboundp 'server-running-p)
         (not (server-running-p)))
    (server-start))

(al-package-install 'use-package)
;; Setup use-package
(eval-when-compile
  (require 'use-package))
(use-package bind-key
  :ensure t)
;; so we can (require 'use-package) even in compiled emacs to e.g. read docs
(use-package use-package
  :commands use-package-autoload-keymap)


(al-package-install 'company)
(global-company-mode 1)

(al-package-install 'swiper)
(ivy-mode 1)
(setq ivy-display-style 'fancy)
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "<f2> s") 'swiper)
(global-set-key (kbd "<f2> S a") 'swiper-all)

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
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)

(al-package-install 'wgrep)

(al-package-install 'avy)
(global-set-key (kbd "<f2> j c") 'avy-goto-char)
(global-set-key (kbd "<f2> j m c") 'avy-goto-char-2)
(global-set-key (kbd "<f2> j l") 'avy-goto-line)
(global-set-key (kbd "<f2> j w b") 'avy-goto-word-1)
(global-set-key (kbd "<f2> j w s") 'avy-goto-word-0)

(al-package-install 'window-numbering)
(window-numbering-mode 1)

(al-package-install 'multiple-cursors)
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

(al-package-install 'smartparens)
(require 'smartparens-config)
(smartparens-global-mode 1)

(al-package-install 'expand-region)
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)

(al-package-install 'find-file-in-project)
(autoload 'find-file-in-project "find-file-in-project" nil t)
(autoload 'find-file-in-project-by-selected "find-file-in-project" nil t)
(autoload 'find-directory-in-project-by-selected "find-file-in-project" nil t)
(autoload 'ffip-show-diff "find-file-in-project" nil t)
(autoload 'ffip-save-ivy-last "find-file-in-project" nil t)
(autoload 'ffip-ivy-resume "find-file-in-project" nil t)
(global-set-key (kbd "C-x M-f") 'project-find-file)

(al-package-install 'yasnippet)
(require 'yasnippet)
(yas-global-mode 1)

(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
(global-set-key (kbd "s-/") 'hippie-expand)

(defun al-open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(global-set-key (kbd "<f2> x") 'al-open-init-file)

(provide 'init-global)
