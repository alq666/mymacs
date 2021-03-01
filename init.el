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
 '(org-agenda-files '("~/thoughts/"))
 '(org-agenda-follow-mode t t)
 '(org-clock-persist 'history)
 '(org-default-notes-file '"~/thoughts/daily.org")
 '(org-log-done 'note)
 '(package-selected-packages
   '(deft org-agenda-property org-beautify-theme org-bullets org-pomodoro org-ref org-sidebar htmlize org-roam magit s nlinum markdown-mode gist csv-mode ack))
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
