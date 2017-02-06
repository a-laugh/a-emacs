(al-package-install 'counsel-gtags)

(add-hook 'c-mode-hook 'counsel-gtags-mode)
(add-hook 'c++-mode-hook 'counsel-gtags-mode)

(with-eval-after-load 'counsel-gtags
  (define-key counsel-gtags-mode-map (kbd "M-t") 'counsel-gtags-find-definition)
  (define-key counsel-gtags-mode-map (kbd "M-r") 'counsel-gtags-find-reference)
  (define-key counsel-gtags-mode-map (kbd "M-s") 'counsel-gtags-find-symbol))

(setenv "GTAGSLIBPATH" "/usr/include")
(setenv "MAKEOBJDIRPREFIX" (file-truename "~/play-exam/life"))
(setq company-backends '((company-dabbrev-code company-gtags)))

(provide 'init-cpp)
