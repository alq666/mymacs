;; from https://blog.aaronbieber.com/2016/09/24/an-agenda-for-life-with-org-mode.html
(defun my-org-skip-subtree-if-priority (priority)
  "Skip an agenda subtree if it has a priority of PRIORITY.

PRIORITY may be one of the characters ?A, ?B, or ?C."
  (let ((subtree-end (save-excursion (org-end-of-subtree t)))
        (pri-value (* 1000 (- org-lowest-priority priority)))
        (pri-current (org-get-priority (thing-at-point 'line t))))
    (if (= pri-value pri-current)
        subtree-end
      nil)))

(setq org-agenda-custom-commands
      '(("c" "Simple agenda view"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header ">>> HIGH <<<")))
          (agenda "" ((org-agenda-span 7))
                      (org-agenda-overriding-header "Today:"))
          (alltodo ""
                   ((org-agenda-skip-function
                     '(or (my-org-skip-subtree-if-priority ?A)
                          (org-agenda-skip-if nil '(scheduled deadline))))
                    (org-agenda-overriding-header ">>> NORMAL <<<"))))
         )))
