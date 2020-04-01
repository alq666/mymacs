(package-initialize)

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
 '(org-agenda-files '("~/org-mode/"))
 '(org-default-notes-file (quote "~/org-mode/daily.org"))
 '(org-log-done (quote note))
 '(package-selected-packages
   (quote
    (magit s nlinum markdown-mode js2-mode go-errcheck go-eldoc go-direx go-autocomplete gist csv-mode ack)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 109 :width normal)))))
