(al-package-install 'elpy)
(elpy-enable)
;; (elpy-use-ipython)

(al-package-install 'flycheck)
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(al-package-install 'py-autopep8)
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(setq python-indent-guess-indent-offset nil)

(provide 'init-python)
