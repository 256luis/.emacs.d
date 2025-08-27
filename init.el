;; -*- lexical-binding: t; -*-

;; ======================
;; Early Performance Tuning
;; ======================
(setq gc-cons-threshold most-positive-fixnum)  ;; Defer GC during startup
(setq package-enable-at-startup nil)           ;; Prevent double initialization
(setq frame-inhibit-implied-resize t)          ;; Faster frame creation

;; ======================
;; Package Management
;; ======================
(require 'package)
(setq package-archives '(("gnu"   . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(setq use-package-always-ensure t
      use-package-expand-minimally t
      use-package-enable-imenu-support t)

;; ======================
;; UI & Appearance
;; ======================
;; Disable GUI elements
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Font & Cursor
(set-face-attribute 'default nil
                    :family "JetBrains Mono"
                    :height 125
                    :weight 'normal)
(blink-cursor-mode -1)
(global-hl-line-mode 1)

;; Window & Frame
(toggle-frame-maximized)
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; ======================
;; Editing & Navigation
;; ======================
(global-auto-revert-mode 1)       ;; Auto-revert files if changed on disk
(electric-pair-mode 1)            ;; Auto-close brackets
(setq-default truncate-lines t)   ;; No line wrapping
(setq ring-bell-function 'ignore) ;; Disable bell sound
(transient-mark-mode -1)          ;; Disable transient mark mode

;; Scrolling
(setq scroll-margin 3
      scroll-conservatively 101)

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      make-backup-files t
      backup-by-copying t)

;; ======================
;; Packages (Lazy-loaded)
;; ======================
(use-package doom-themes
  :defer t)

(use-package kanagawa-themes
  :defer t)

(use-package go-mode
  :defer t)

(use-package eldoc-box
  :defer t
  :config
  (setq eldoc-echo-area-use-multiline-p nil))  ;; Silence Eldoc

(use-package disable-mouse
  :defer t
  :init
  (global-disable-mouse-mode 1))

(use-package vertico
  :defer t
  :init
  (vertico-mode 1))

(use-package kaolin-themes
  :defer t)

(use-package typescript-mode
  :defer t)

(use-package eglot
  :defer t
  :config
  (add-to-list 'eglot-ignored-server-capabilities :documentOnTypeFormattingProvider)
  (add-to-list 'eglot-ignored-server-capabilities :inlayHintProvider))

(use-package corfu
  :defer 0.5  ;; Slight delay to avoid startup lag
  :custom
  (corfu-auto t)
  (corfu-cycle t)
  (corfu-auto-prefix 2)
  (corfu-auto-delay 0.0))

;; ======================
;; Keybindings
;; ======================

(bind-key* "C-d"          'delete-region) ;; delete region without copying
(bind-key* "M-RET"        'eldoc-box-help-at-point)
(bind-key* "C-a"          'back-to-indentation)
(bind-key* "M-w"          'copy-region-as-kill)
(bind-key* "C-x C-SPC"    'pop-to-mark-command)
(bind-key* "C-x C-<up>"   'flymake-goto-prev-error)
(bind-key* "C-x C-<down>" 'flymake-goto-next-error)

;; (bind-key* "<escape>"     'god-mode-all)
(windmove-default-keybindings)                       ;; Shift+arrows to switch windows

;; ======================
;; C Mode Configuration
;; ======================
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

(load-theme 'doom-gruvbox t)  ;; Load theme early to avoid flicker

(set-frame-parameter nil 'alpha-background 85) ; For current frame
(add-to-list 'default-frame-alist '(alpha-background . 85)) ; For all new frames henceforth

;; ======================
;; Final Startup Tweaks
;; ======================
(add-hook 'emacs-startup-hook
          (lambda ()
            (setq gc-cons-threshold (expt 2 23))))  ;; Reset GC threshold to 8MB

(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; (add-hook 'c-mode-hook #'lsp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0)
 '(custom-safe-themes
   '("3f24dd8f542f4aa8186a41d5770eb383f446d7228cd7a3413b9f5e0ec0d5f3c0"
     "fffef514346b2a43900e1c7ea2bc7d84cbdd4aa66c1b51946aade4b8d343b55a"
     "e4a441d3cea911e8ef36de2eaed043cbe2079484c44c3f2bbab67a46f863a9f6"
     "1bc640af8b000ae0275dbffefa2eb22ec91f6de53aca87221c125dc710057511"
     "a368631abdadffb6882f9994637d7216167912311447f1ec02f9dc58e9cc62a9"
     "72d9086e9e67a3e0e0e6ba26a1068b8b196e58a13ccaeff4bfe5ee6288175432"
     "19d62171e83f2d4d6f7c31fc0a6f437e8cec4543234f0548bad5d49be8e344cd"
     "e4d4cc443964b8a64defc06de3edb2363f7cb1b3c3ae2272b2c1487f626e4318"
     "088cd6f894494ac3d4ff67b794467c2aa1e3713453805b93a8bcb2d72a0d1b53"
     "9b9d7a851a8e26f294e778e02c8df25c8a3b15170e6f9fd6965ac5f2544ef2a9"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     "d2ab3d4f005a9ad4fb789a8f65606c72f30ce9d281a9e42da55f7f4b9ef5bfc6"
     "c20728f5c0cb50972b50c929b004a7496d3f2e2ded387bf870f89da25793bb44"
     "daa27dcbe26a280a9425ee90dc7458d85bd540482b93e9fa94d4f43327128077"
     "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
     "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098"
     "3538194fff1b928df280dc08f041518a8d51ac3ff704c5e46d1517f5c4d8a0e0"
     "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738"
     "93011fe35859772a6766df8a4be817add8bfe105246173206478a0706f88b33d"
     "456697e914823ee45365b843c89fbc79191fdbaff471b29aad9dcbe0ee1d5641"
     "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1"
     "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
     "d481904809c509641a1a1f1b1eb80b94c58c210145effc2631c1a7f2e4a2fdf4"
     "34cf3305b35e3a8132a0b1bdf2c67623bc2cb05b125f8d7d26bd51fd16d547ec"
     "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
     "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1"
     "9d5a33a0097c43f44759530c846e1adf9c40171f232a4b2ae561feccc99a03c4"
     "a59d0dbcbdfc57a14bc3fa28cb5a8367bc7ede82d848f517b4979b4a03c09da9"
     "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd"
     "e8ceeba381ba723b59a9abc4961f41583112fc7dc0e886d9fc36fa1dc37b4079"
     "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290"
     "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851"
     "30d174000ea9cbddecd6cc695943afb7dba66b302a14f9db5dd65074e70cc744"
     "48042425e84cd92184837e01d0b4fe9f912d875c43021c3bcb7eeb51f1be5710"
     "452068f2985179294c73c5964c730a10e62164deed004a8ab68a5d778a2581da"
     "21eb44ad0e958f71261c436a06577dc114b2850e5a82bc12314cf63c2d2d1db5"
     default))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
