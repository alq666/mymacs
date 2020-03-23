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
(mapcar 'ensure-package-installed '(ack csv-mode gist go-autocomplete auto-complete go-direx direx go-eldoc go-errcheck go-mode js2-mode gh logito markdown-mode nlinum pcache popup s))
