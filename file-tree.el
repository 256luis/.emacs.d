(use-package neotree
  :ensure t
  :defer t
  :bind
  ("C-z" . neotree-toggle))

(add-hook 'neotree-mode-hook
          (lambda ()
            (display-line-numbers-mode -1)))
