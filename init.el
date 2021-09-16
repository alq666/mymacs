;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
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
 '(package-selected-packages
   '(magit-find-file ponylang-mode deft org-agenda-property org-beautify-theme org-bullets org-pomodoro org-ref org-sidebar htmlize s nlinum markdown-mode gist csv-mode))
 '(show-paren-mode t)
 '(tool-bar-mode nil))

(org-clock-persistence-insinuate)
(load-file "~/.emacs.d/org-mode-defaults.el")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :extend nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 140 :width normal :foundry "nil" :family "Menlo")))))
