
(use-package doom-themes
  :defer t
  :ensure t)

(use-package kaolin-themes
  :defer t
  :ensure t)

(use-package catppuccin-theme
  :defer t
  :ensure t)

;; load theme
(load-theme 'kaolin-ocean t)

;; (set-background-color "#0C0D14")
;; (set-background-color "#08080d")
;; (set-face-attribute 'hl-line nil
;;                     :background "#1F2133")
(set-face-attribute 'line-number-current-line nil
                    :inherit 'hl-line
                    :background 'unspecified)
;; (set-frame-parameter (selected-frame) 'alpha '(95 85))
;; (add-to-list 'default-frame-alist '(alpha 95 85))
 
;; set font
(set-face-attribute 'default nil
                    :family "Source Code Pro SemiBold"
                    :height 100
                    :weight 'normal
                    :width 'normal)
(make-face-italic 'font-lock-comment-face)
(make-face-italic 'line-number)
(make-face-italic 'line-number-current-line)
