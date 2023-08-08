;; (use-package powershell
;;   :defer t
;;   :ensure t)

(defun shell-hooks ()
  "Set the background color of the current buffer to black."
  (setq-local face-remapping-alist '((default (:foreground "#CCCCCC"))))
  (display-line-numbers-mode -1)
  (setq global-hl-line-mode nil)
  (corfu-mode -1))
  
(setq explicit-shell-file-name "powershell.exe"
      explicit-powershell.exe-args '("-InputFormat" "Text")
      comint-process-echoes t)

(add-hook 'shell-mode-hook 'shell-hooks)
(add-hook 'compilation-mode-hook 'shell-hooks)
(add-hook 'eshell-mode-hook 'shell-hooks)
