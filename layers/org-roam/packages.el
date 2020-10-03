(defconst org-roam-packages
  '(org-roam))

(defun org-roam/init-org-roam ()
  (use-package org-roam
    :hook
    (after-init . org-roam-mode)
    :custom
    (org-roam-directory "~/Workspace/FundingCircle/pink-elephants/research")
    :config
    (setq org-roam-dailies-capture-templates
          '(("d" "daily" plain (function org-roam-capture--get-point) ""
             :immediate-finish t
             :file-name "journals/%<%Y-%m-%d>"
             :head "#+title: %<<%Y-%m-%d>>"))) ;; same as org-journal-date-format
    :init
    (progn
      (spacemacs/declare-prefix "aor" "org-roam")
      (spacemacs/declare-prefix "aord" "org-roam-dailies")
      (spacemacs/set-leader-keys
        "aordt" 'org-roam-dailies-today
        "aordy" 'org-roam-dailies-yesterday
        "aordT" 'org-roam-dailies-tomorrow
        "aorf" 'org-roam-find-file
        "aorg" 'org-roam-graph
        "aorr" 'org-roam)

      (spacemacs/declare-prefix-for-mode 'org-mode "mr" "org-roam")
      (spacemacs/declare-prefix-for-mode 'org-mode "mrd" "org-roam-dailies")
      (spacemacs/set-leader-keys-for-major-mode 'org-mode
        "rb" 'org-roam-switch-to-buffer
        "rdT" 'org-roam-dailies-tomorrow
        "rdt" 'org-roam-dailies-today
        "rdy" 'org-roam-dailies-yesterday
        "rf" 'org-roam-find-file
        "rg" 'org-roam-graph
        "ri" 'org-roam-insert
        "rr" 'org-roam))))
