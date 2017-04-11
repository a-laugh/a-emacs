(al-package-install 'rust-mode)

(al-package-install 'cargo)
(add-hook 'rust-mode-hook 'cargo-minor-mode)

(al-package-install 'racer)
(setq racer-rust-src-path "~/src/rust-1.16.0/src")
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(al-package-install 'flycheck-rust)
(add-hook 'rust-mode-hook 'flycheck-mode)
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

(add-hook 'rust-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c <tab>") #'rust-format-buffer)))

(provide 'init-rust)
