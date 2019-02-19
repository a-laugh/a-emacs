(pstt-package-install 'cquery)

(setq cquery-executable "/usr/local/bin/cquery")

(setq cquery-project-roots '("/home/mzgcz/code/csn/sm/core" ))

(defun cquery//enable ()
  (condition-case nil
      (lsp)
    (user-error nil)))

(use-package cquery
	     :commands lsp
	     :init (add-hook 'c-mode-hook #'cquery//enable)
	     (add-hook 'c++-mode-hook #'cquery//enable))

(provide 'for-cpp)
