(require 'package)
(package-initialize)
(setq package-archives '(("melpa-cn" . "http://elpa.zilongshanren.com/melpa/")))

(defun al-package-install (package)
  (unless (package-installed-p package)
    (unless (assoc package package-alist)
      (package-refresh-contents)
      (package-install package))))

(provide 'init-package)
