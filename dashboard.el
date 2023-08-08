(use-package dashboard
  :ensure t
  :config
  (dashboard-setup-startup-hook)
  (setq dashboard-startup-banner 'logo
        dashboard-center-content t
        dashboard-projects-backend 'project-el
        dashboard-items '((recents . 5)
                          (projects  . 5))))
