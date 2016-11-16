(dolist (path (directory-files (expand-file-name "cells" user-emacs-directory)))
  (let ((module-path (expand-file-name path (expand-file-name "cells" user-emacs-directory))))
    (when (and (file-directory-p module-path) (not (string= "." path)) (not (string= ".." path)))
      (add-to-list 'load-path module-path)
      (require (intern (concat "init-" path))))))

(provide 'init-cells)
