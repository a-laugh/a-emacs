(pstt-package-install 'magit)

(require 'subr-x)
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'for-git)
