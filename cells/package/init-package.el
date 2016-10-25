(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa-cn" . "http://elpa.zilongshanren.com/melpa/") t)

(defun al-package-install (package)
  (unless (package-installed-p package)
    (package-refresh-contents)
    (package-install package)))

(provide 'init-package)
