(al-package-install 'elfeed)

(global-set-key (kbd "C-x w") 'elfeed)

(setq elfeed-feeds
      '("http://www.solidot.org/index.rss"
        "https://linuxtoy.org/feeds/all.atom.xml"
	"http://www.ruanyifeng.com/blog/atom.xml"))

(provide 'init-rss)
