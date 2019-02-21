(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq tab-width 4)

(pstt-package-install 'cquery)

(require 'cquery)
(setq cquery-executable "/usr/local/bin/cquery")
(setq cquery-cache-dir "/home/mzgcz/self/.cquery_cached_index")
(setq cquery-project-roots '("/home/mzgcz/code/csn/sm/core"))
(setq cquery-extra-init-params '(:index (:comments 2) :cacheFormat "msgpack" :completion (:detailedLabel t)))

(defun cquery//enable ()
  (condition-case nil
      (lsp)
    (user-error nil)))

(use-package cquery
	     :commands lsp
	     :init (add-hook 'c-mode-hook #'cquery//enable)
	     (add-hook 'c++-mode-hook #'cquery//enable))

(provide 'for-cpp)
