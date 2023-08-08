;;; -*- lexical-binding: t; -*-

(setq gc-cons-threshold most-positive-fixnum)

;; show init time
(add-hook 'emacs-startup-hook
          (lambda ()
            (message
             "Emacs loaded in %s with %d garbage collections."
             (format
              "%.2f seconds"
              (float-time
               (time-subtract after-init-time before-init-time)))
             gcs-done)))

;; connect to package repositories
(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; ;; install use-package
;; (unless (package-installed-p 'use-package)
;;   (package-refresh-contents)
;;   (package-install 'use-package))
;; (eval-and-compile
;;   (setq use-package-always-ensure t
;;         use-package-expand-minimally t))

(defmacro load-file-relative-to-init (path)
  (load-file (expand-file-name path user-emacs-directory)))

(load-file-relative-to-init "base.el")
(load-file-relative-to-init "completion.el")
(load-file-relative-to-init "disable-mouse.el")
;; (load-file-relative-to-init "file-tree")
(load-file-relative-to-init "keybinds.el")
;; (load-file-relative-to-init "icons.el")
(load-file-relative-to-init "terminal.el")
(load-file-relative-to-init "theme.el")
(load-file-relative-to-init "modeline.el")
(load-file-relative-to-init "minibuffer.el")
(load-file-relative-to-init "dashboard.el")

(setq gc-cons-threshold 800000)
