(require 'org)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c l") 'org-store-link)
(setq org-log-done t)
(setq org-startup-indented t)

(dolist (path (directory-files "~/daily"))
  (let ((absolute-path (concat "~/daily/" path)))
    (unless (file-directory-p absolute-path)
      (add-to-list 'org-agenda-files absolute-path))))

(defun org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))

(add-hook 'org-after-todo-statistics-hook 'org-summary-todo)

(provide 'init-org)
