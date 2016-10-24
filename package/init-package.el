(defvar myPackages
  '(better-defaults
    company
    elpy
    flycheck
    material-theme
    py-autopep8
    magit))

(package-refresh-contents)

(mapc #'(lambda (package)
	  (unless (package-installed-p package)
	    (package-install package)))
      myPackages)

(provide 'init-package)
