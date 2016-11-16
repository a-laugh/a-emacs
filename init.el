(add-to-list 'load-path "~/.emacs.d/cells/")
(require 'init-cells)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

