;; -*- lexical-binding: t; -*-

;; theme
(load-theme 'gruvbox-black t)

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
  (add-to-list 'eglot-ignored-server-capabilities :inlayHintProvider)
  :hook
  (prog-mode . eglot-ensure))

(use-package corfu
  :ensure t
  :config
  (setq corfu-auto t)
  (setq corfu-cycle t)
  (setq corfu-auto-prefix 2)
  (setq corfu-auto-delay 0.1)
  :hook
  (prog-mode . corfu-mode))

;; custom keybinds
(bind-key* "C-d"          'delete-region) ;; delete region without copying
(bind-key* "C-a"          'back-to-indentation)
(bind-key* "M-w"          'copy-region-as-kill)
(bind-key* "C-x C-SPC"    'pop-to-mark-command)
(bind-key* "C-x C-<up>"   'flymake-goto-prev-error)
(bind-key* "C-x C-<down>" 'flymake-goto-next-error)
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
(set-frame-font "SF Mono SemiBold-11" nil t)
;; (set-face-attribute 'default nil
;;                     :font "Jetbrains Mono"
;;                     :height 110
;;                     :weight 'medium)
