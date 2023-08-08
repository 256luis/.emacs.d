;; let project.el see files even if in gitignore
(with-eval-after-load 'project
  (let ((local (lambda (dir)
                 (let ((root (locate-dominating-file dir ".root")))
                   (and root (cons 'transient root)))))))
  (add-hook 'project-find-functions local))
