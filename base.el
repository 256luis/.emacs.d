;; remove clutter
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; line numbers
(global-display-line-numbers-mode -1)
;; (setq-default display-line-numbers-type t)
(setq-default column-number-mode 1)

;; remove annoying bell soundevl
(setq ring-bell-function 'ignore)

;; dont blink cursor
(blink-cursor-mode -1)

;; maximize
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; disable text wrapping
(setq-default truncate-lines t)

;; c style
(defconst my-cc-style
  '("awk"
    (c-offsets-alist . ((case-label +)
                        (statement-cont +)
                        (statement-case-intro 0)
                        (arglist-close 0)
                        (inline-open 0)))))
(c-add-style "my-cc-style" my-cc-style)
(setq-default c-default-style "my-cc-style")
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
(add-hook 'c-mode-hook
          (lambda ()
            (setq comment-start "// "
                  comment-end "")))

;; brackets
(electric-pair-mode 1)

;; clarity
(global-hl-line-mode 1)
(make-variable-buffer-local 'global-hl-line-mode)

;; enable windmove
(windmove-default-keybindings)

;; 4coder style
(transient-mark-mode -1)

;; initial buffer
(setq initial-buffer-choice "~/.emacs.d/init.el")

;; change backup directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; make init.el cleaner
(setq custom-file (concat user-emacs-directory "/custom.el"))

;; delete trailing whitespace on save
(add-hook 'before-save-hook (lambda()
                              (delete-trailing-whitespace)))
