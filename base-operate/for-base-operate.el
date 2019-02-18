(setq make-backup-files nil)
(fset 'yes-or-no-p 'y-or-n-p)

(pstt-package-install 'window-numbering)
(window-numbering-mode 1)

(require 'ido)
(ido-mode t)

(provide 'for-base-operate)
