(dolist (path (directory-files "~/.emacs.d/cells"))
  (let ((absolute-path (concat "~/.emacs.d/cells/" path)))
    (when (file-directory-p absolute-path)
      (add-to-list 'load-path absolute-path))))

(require 'init-package)
(require 'init-global)
(require 'init-ui)
(require 'init-python)
(require 'init-markdown)
(require 'init-git)

(provide 'init-cells)
