;; 设置插件源
(require 'package)
(package-initialize)
(add-to-list 'package-archives '("melpa-cn" . "http://elpa.zilongshanren.com/melpa/") t)

;; 设置proxy
(setq url-proxy-services '(("http" . "proxynj.zte.com.cn:80")
			   ("https" . "proxynj.zte.com.cn:80")))

(add-to-list 'load-path "~/.emacs.d/global/")

;; Package Management
;; -----------------------------------------------------------------
(require 'init-global)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
