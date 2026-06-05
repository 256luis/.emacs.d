;; -*- lexical-binding: t; -*-

;; font
(setq-default line-spacing '(1 . 1))
(set-face-attribute 'default nil
                    :font "Jetbrains Mono"
                    :height 95
                    :weight 'normal)

(set-frame-parameter nil 'undecorated t)
(set-frame-parameter nil 'internal-border-width 16)
(set-frame-parameter nil 'width 0.94)
(set-frame-parameter nil 'height 0.9)
(set-frame-parameter nil 'top 0.5)
(set-frame-parameter nil 'left 0.5)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("2eadd9cb53be03bc79bd27d25fd093bdf157b07aaad1c2bbfe1518d42bca4b82"
     default))
 '(package-selected-packages '(corfu dashboard disable-mouse eat eglot vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
