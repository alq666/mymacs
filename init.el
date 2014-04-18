(load-file "~/.emacs.d/better-defaults.el")

;; moar packages
(package-initialize)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

;; quick helper to prettify json
(defun json-format ()
  (interactive)
  (save-excursion
    (shell-command-on-region (point-min) (point-max) "python -m json.tool" (buffer-name) t)
    )
  )

(load-file "~/.emacs.d/keys.el")
