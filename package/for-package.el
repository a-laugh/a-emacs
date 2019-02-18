(require 'package)
(package-initialize)
(setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))

(defun pstt-package-install (package)
  (unless (package-installed-p package)
    (unless (assoc package package-alist)
      (package-refresh-contents)
      (package-install package))))

(provide 'for-package)
