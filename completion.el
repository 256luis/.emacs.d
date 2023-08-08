(use-package corfu
  :defer 0.1
  :ensure t
  :config
  (setq corfu-auto t
      corfu-auto-delay 0
      corfu-auto-prefix 0)      
  (set-face-attribute 'corfu-default nil
                      :inherit 'vertico-posframe
                      :background 'unspecified
                      :box nil)
  (global-corfu-mode 1))
