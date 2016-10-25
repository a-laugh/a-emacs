;; 设置插件源
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa-cn" . "http://elpa.zilongshanren.com/melpa/") t)

;; 设置proxy
(setq url-proxy-services '(("http" . "proxynj.zte.com.cn:80")
			   ("https" . "proxynj.zte.com.cn:80")))

(add-to-list 'load-path "~/.emacs.d/global/")
(add-to-list 'load-path "~/.emacs.d/package/")
(add-to-list 'load-path "~/.emacs.d/python/")
(add-to-list 'load-path "~/.emacs.d/markdown/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-package)
(require 'init-global)
(require 'init-python)
(require 'init-markdown)

