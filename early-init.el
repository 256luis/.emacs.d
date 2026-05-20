;; -*- lexical-binding: t; -*-

(setq gc-cons-threshold most-positive-fixnum)  ;; Defer GC during startup
(setq package-enable-at-startup nil)           ;; Prevent double initialization
(setq frame-inhibit-implied-resize t)          ;; Faster frame creation

(require 'package)
(setq package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
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
(add-hook 'prog-mode-hook (lambda ()
                            (eglot-ensure)
                            (corfu-mode)))
(add-hook 'eshell-mode-hook (lambda ()
                              (face-remap-add-relative 'default
                                                       :foreground "gray90"
                                                       :weight 'normal)))
;; Scrolling
(setq scroll-margin 3
      scroll-conservatively 101)

;; cursor
(blink-cursor-mode -1)
(global-hl-line-mode 1)
