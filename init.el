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
(set-frame-font "SF Mono SemiBold-11" nil t)
;; (set-face-attribute 'default nil
;;                     :font "Jetbrains Mono"
;;                     :height 110
;;                     :weight 'medium)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4dfde675e820b3ce4eeeeea7510328003c44a5d3832df9eccf55229984d0699c"
     "81e4d6a08e755b7716c692e7fb4e424808bf163fc8212d7cc9c005264be8d1b6"
     "8bb531d5bf1b5eeaa4cff6651648687eeb9581dcadb8ba91dd4413963fedb2eb"
     "039112154ee5166278a7b65790c665fe17fd21c84356b7ad4b90c29ffe0ad606"
     "2902694c7ef5d2a757146f0a7ce67976c8d896ea0a61bd21d3259378add434c4"
     "50335303d5af676cd0c2eff01ccbb09592b12b58d1cd90bcb5b28f0a5753ee73"
     "3256de838b9c689f474b02fa2928513999e96cc2d0d13be0c79ee969def7852a"
     "27efdd7b56f7b35c02bc63e818dace69e6cf34832f6024e409a659998a9db7f4"
     "bfb82b263be2893fd00de7cce58dd5ca26f02ae5c411affde1d47ef3ca85ffe1"
     "f21e36f7955f5615e84c40009f916898690e48e0b01d2d5def6c28e9b17fb3d3"
     "ea482d999de9674b72b3013efbb784fbb0104bb1619efe402b3c32a2f84503f8"
     "f1229ac04024f0355919a3c9d242651c63f6b1849322be4ccbcceb0deabe776b"
     "1777890c89227e8b837234d2115367d9d4f50138dfb0bf9c581cb1f693f1dd49"
     "b15c7dba80bbe6c629e8a9eea2fc4c4ca0b4a9d09050ccf6bcb1a554b4578561"
     "ba1bf636d4a43aa74241bc463865352ecb4369d0f05a18a89a88beca46db9b1d"
     "9714f2652e2dce92cfa55f5927e57d55bbdb92376a97de9127e86222f379c2c3"
     "9860d53882f0962f40f79b0b1178dcb140fc45441084e6e4ebfdee0f60f800ba"
     "a119a22be5387c78ce94cca8ab08e8c89f3ba5a4312d964be9a24dbc49c7ed7f"
     "ad03ce0a66b771630e6c83e30863a5a69a45d21c6d784fc47b5bd87ba0d28a81"
     "57cacbe6f1398af46b984f27224b266543c6040294f6b7e6170dfbc6639cf1a6"
     "b4714bcc549285cb25a3e7d198a03790ef84d40d74110ef4265aed38c5794332"
     "2f88a0410808a6aedfa9070fec1c813385f2aa0bcbe74b4b3e0a884e57851225"
     "82c2d3e99ce6013bdb7516c5a2d6ef79bf014cabd575b179d731378488eafaa6"
     "79e50b4c78902bdd05b33e57801b437030b158da6063aed0fe73adb74a528f77"
     "646188ab855a4d68a187a3857cb6264aac84c23409e2a4120842da0f16752d06"
     "e726953377d4444494c53654034aae0b1a938af82412fdc43fc6d2b444292be6"
     "18f66613ab0b385429bdd6ef7938df527f35945422db693aa191ae158c286ecc"
     "f1e8339b04aef8f145dd4782d03499d9d716fdc0361319411ac2efc603249326"
     default))
 '(package-selected-packages
   '(autothemer base16-theme batppuccin corfu dape disable-mouse
                doom-themes emojify ghostel magit markdown-mode
                multiple-cursors vertico winpulse)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
