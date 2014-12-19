;; Add extra repositories
; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(defun ensure-package-installed (&rest packages)
  "Assure every package is installed, ask for installation if it’s not.

Return a list of installed packages or nil for every skipped package."
  (mapcar
   (lambda (package)
     (if (package-installed-p package)
         nil
       (if (y-or-n-p (format "Package %s is missing. Install it? " package))
           (package-install package)
         package)))
   packages))

;; make sure to have downloaded archive description.
(package-refresh-contents)

;; activate installed packages
(package-initialize)

;; list of dependencies here
(mapcar 'ensure-package-installed '(2048-game ack csv-mode gist go-autocomplete auto-complete go-direx direx go-eldoc go-errcheck go-mode js2-mode magit-filenotify magit-find-file magit-gh-pulls gh logito magit-push-remote magit git-rebase-mode git-commit-mode markdown-mode nlinum pcache popup s))
