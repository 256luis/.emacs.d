;; -*- lexical-binding: t; -*-

(setq gc-cons-threshold most-positive-fixnum)  ;; Defer GC during startup
(setq package-enable-at-startup nil)           ;; Prevent double initialization
(setq frame-inhibit-implied-resize t)          ;; Faster frame creation

(require 'package)
(setq package-archives '(("melpa"  . "https://melpa.org/packages/")
                         ("gnu"    . "https://elpa.gnu.org/packages/")
                         ("nongnu" . "https://elpa.nongnu.org/nongnu/")))
(package-initialize)

(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (expt 2 23))))  ;; Reset GC threshold to 8MB

;; no splash screen
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; remove ui stuff
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

(setq initial-major-mode 'fundamental-mode)
;; (setq initial-buffer-choice 'dashboard-open)

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      make-backup-files t
      backup-by-copying t)

;; editing n stuff
(global-auto-revert-mode 1)       ;; Auto-revert files if changed on disk
(electric-pair-mode 1)            ;; Auto-close brackets
(setq-default truncate-lines t)   ;; No line wrapping
(setq ring-bell-function 'ignore) ;; Disable bell sound
(transient-mark-mode -1)          ;; Disable transient mark mode
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Scrolling
(setq scroll-margin 3
      scroll-conservatively 101)

;; cursor
(blink-cursor-mode -1)
(global-hl-line-mode 1)

;; init.el

;; theme
(load-theme 'gruvbox-black t)

(use-package disable-mouse
  :ensure t
  :config
  (global-disable-mouse-mode 1))

(use-package vertico
  :ensure t
  :config
  (setq vertico-count 10)
  (vertico-mode 1))

(use-package marginalia
  :ensure t
  :config
  (marginalia-mode 1))

(use-package vertico-posframe
  :ensure t
  :config
  (setq vertico-posframe-border-width 20)
  (setq vertico-posframe-width nil)
  (setq vertico-posframe-min-height nil)
  (setq vertico-posframe-poshandler 'posframe-poshandler-frame-center)
  (setq vertico-posframe-font "Jetbrains Mono-11")
  (set-face-attribute 'vertico-posframe-border nil
                      :background "grey4")
  (set-face-attribute 'vertico-posframe nil
                      :background "grey4")
  (vertico-posframe-mode 1))

(use-package eglot
  :config
  (add-to-list 'eglot-ignored-server-capabilities :documentOnTypeFormattingProvider)
  (add-to-list 'eglot-ignored-server-capabilities :documentHighlightProvider)
  (add-to-list 'eglot-ignored-server-capabilities :inlayHintProvider)
  :hook
  (prog-mode . eglot-ensure))
(setq eglot-sync-connect 0)

(use-package sideline-flymake
  :ensure t
  :hook
  (flymake-mode . sideline-mode)
  :init
  (setq sideline-flymake-display-mode 'line)
  (setq sideline-backends-right '(sideline-flymake)))

(use-package corfu
  :ensure t
  :init
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
(bind-key* "M-<up>"       'scroll-down-line)
(bind-key* "M-<down>"     'scroll-up-line)
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
