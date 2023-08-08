(use-package vertico
  :ensure t
  :defer 0.1
  :config
  (vertico-mode 1)
  (setq vertico-count 15)
  (setq completion-styles '(substring flex)))
  
(use-package vertico-posframe
  :ensure t
  :after (vertico)
  :config  
  (set-face-attribute 'vertico-posframe nil
                      :inherit 'mode-line
                      :background "black")
  (set-face-attribute 'vertico-posframe-border nil
                      :inherit 'vertico-posframe
                      :background nil)
  (vertico-posframe-mode 1)
  (setq vertico-posframe-border-width 20
        vertico-posframe-width 90
        vertico-posframe-poshandler 'posframe-poshandler-frame-center))
