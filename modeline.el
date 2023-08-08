;; (use-package doom-modeline
;;   :defer 0.1
;;   :ensure t
;;   :config
;;   (doom-modeline-mode 1))

(use-package powerline
  :ensure t
  :defer 0.1
  :config
  (powerline-default-theme))

(set-face-attribute 'mode-line nil
                    :inherit 'hl-line
                    :background 'unspecified)
(set-face-attribute 'mode-line-inactive nil
                    :inherit 'default
                    :background 'unspecified)
