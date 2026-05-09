;; -*- lexical-binding: t; -*-

(use-package disable-mouse
  :ensure t
  :config
  (global-disable-mouse-mode 1))

(use-package vertico
  :ensure t
  :config
  (vertico-mode 1))

(use-package eglot
  :config
  (add-to-list 'eglot-ignored-server-capabilities :documentOnTypeFormattingProvider)
  (add-to-list 'eglot-ignored-server-capabilities :inlayHintProvider))

(use-package corfu
  :ensure t
  :config
  (setq corfu-auto t)
  (setq corfu-cycle t)
  (setq corfu-auto-prefix 2)
  (setq corfu-auto-delay 0.1))

(use-package emojify
  :ensure t
  :config
  (global-emojify-mode))

;; custom keybinds
(bind-key* "C-d"          'delete-region) ;; delete region without copying
(bind-key* "M-RET"        'eldoc-box-help-at-point)
(bind-key* "C-a"          'back-to-indentation)
(bind-key* "M-w"          'copy-region-as-kill)
(bind-key* "C-x C-SPC"    'pop-to-mark-command)
(bind-key* "C-x C-<up>"   'flymake-goto-prev-error)
(bind-key* "C-x C-<down>" 'flymake-goto-next-error)
(bind-key* "C-c <right>"      'mc/mark-next-like-this-word)
(bind-key* "C-c <left>"      'mc/mark-previous-like-this-word)
(windmove-default-keybindings)                       ;; Shift+arrows to switch windows

;; C Mode Configuration
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-auto-align-backslashes nil)
(c-add-style "luis"
             '("gnu"
               (c-basic-offset . 4)
               (c-offsets-alist
                (block-close . 0)
                (brace-list-close . 0)
                (case-label . +)
                (defun-close . 0)
                (statement . 0)
                (substatement-open . 0)
                (topmost-intro-cont . 0)
                (statement-case-open . 0)
                ;; (Keep only the offsets you actually use)
                )))
(setq c-default-style "luis")

(setq compile-command "build")

;; font
(set-frame-font "SF Mono Medium-11" nil t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("79e50b4c78902bdd05b33e57801b437030b158da6063aed0fe73adb74a528f77"
     "646188ab855a4d68a187a3857cb6264aac84c23409e2a4120842da0f16752d06"
     "e726953377d4444494c53654034aae0b1a938af82412fdc43fc6d2b444292be6"
     "18f66613ab0b385429bdd6ef7938df527f35945422db693aa191ae158c286ecc"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     default))
 '(package-selected-packages
   '(autothemer base16-theme batppuccin corfu disable-mouse doom-themes
                emojify ghostel magit markdown-mode multiple-cursors
                vertico winpulse)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
