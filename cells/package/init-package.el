(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa-cn" . "http://elpa.zilongshanren.com/melpa/") t)

(defvar al-package-refreshed nil)
(defun al-package-refreshed-p ()
  al-package-refreshed)

(defun al-package-install (package)
  (unless (package-installed-p package)
    (unless (al-package-refreshed-p)
      (package-refresh-contents)
      (setq al-package-refreshed nil))
    (package-install package)))

(provide 'init-package)
