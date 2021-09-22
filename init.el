(load-file "~/.emacs.d/better-defaults.el")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/keys.el")

;; quick helper to prettify json
(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (point-min) (point-max) "python -m json.tool" (buffer-name) t)
    )
  )

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-use-system-font t)
 '(magit-push-arguments nil)
 '(package-selected-packages
   '(flycheck rust-mode magit deft org-pomodoro org-ref org-sidebar htmlize))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(org-clock-persistence-insinuate)
(load-file "~/.emacs.d/org-mode-defaults.el")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (version<= "26.0.50" emacs-version)
  (global-display-line-numbers-mode))
