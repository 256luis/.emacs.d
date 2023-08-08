(bind-key* "C-f" 'replace-string)
(bind-key* "C-." 'isearch-backward)
(bind-key* "C-d" 'delete-active-region)
(bind-key* "M-;" 'comment-or-uncomment-region)
(bind-key* "C-a" 'back-to-indentation)

;;(bind-key* "C-x p c" 'project-async-shell-command)
(define-key isearch-mode-map (kbd "C-.") 'isearch-repeat-backward)
