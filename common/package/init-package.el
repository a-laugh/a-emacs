(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")
			 ("org-cn" . "http://elpa.emacs-china.org/org/")))

(defun al-package-install (package)
  (unless (package-installed-p package)
    (unless (assoc package package-alist)
      (package-refresh-contents)
      (package-install package))))

(global-set-key (kbd "<f2> p l") 'package-list-packages)

(provide 'init-package)
