(al-package-install 'counsel-gtags)

(add-hook 'c-mode-hook 'counsel-gtags-mode)
(add-hook 'c++-mode-hook 'counsel-gtags-mode)

(with-eval-after-load 'counsel-gtags
  (define-key counsel-gtags-mode-map (kbd "M-t") 'counsel-gtags-find-definition)
  (define-key counsel-gtags-mode-map (kbd "M-r") 'counsel-gtags-find-reference)
  (define-key counsel-gtags-mode-map (kbd "M-s") 'counsel-gtags-find-symbol)
  (define-key counsel-gtags-mode-map (kbd "s-,") 'company-gtags))

(setenv "GTAGSLIBPATH" "/usr/include")
(setenv "MAKEOBJDIRPREFIX" (file-truename "~/github/play-exam"))

(provide 'init-cpp)
