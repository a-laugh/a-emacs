(add-to-list 'load-path (expand-file-name "common" user-emacs-directory))
(require 'init-common)

(add-to-list 'load-path (expand-file-name "cells" user-emacs-directory))
(require 'init-cells)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
