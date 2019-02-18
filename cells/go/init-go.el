(al-package-install 'go-mode)

;; (add-hook 'before-save-hook 'gofmt-before-save)
;; (add-hook 'go-mode-hook (lambda()
;; 			  (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

;; (add-to-list 'load-path "~/go/src/github.com/dougm/goflymake")
;; (require 'go-flycheck)
;; (add-hook 'go-mode-hook 'flycheck-mode)

;; (al-package-install 'auto-complete)
;; (al-package-install 'go-autocomplete)
;; (ac-config-default)
;; (require 'go-autocomplete)
;; (require 'auto-complete-config)
;; (ac-config-default)

(provide 'init-go)
