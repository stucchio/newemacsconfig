;;; helm-org-rifle-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "helm-org-rifle" "../../../../AppData/Roaming/.emacs.d/elpa/helm-org-rifle-20181216.1129/helm-org-rifle.el"
;;;;;;  "dd846ad1efeba5129fff7d60cc536018")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/helm-org-rifle-20181216.1129/helm-org-rifle.el
 (autoload 'helm-org-rifle "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-current-buffer "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-files "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-sort-by-latest-timestamp "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-current-buffer-sort-by-latest-timestamp "helm-org-rifle" nil t)

(autoload 'helm-org-rifle-agenda-files "helm-org-rifle" "\
Rifle through Org agenda files.

\(fn)" t nil)

(autoload 'helm-org-rifle-directories "helm-org-rifle" "\
Rifle through Org files in DIRECTORIES.
DIRECTORIES may be a string or list of strings.  If DIRECTORIES
is nil, prompt with `helm-read-file-name'.  With prefix or
TOGGLE-RECURSION non-nil, toggle recursion from the default.
Files in DIRECTORIES are filtered using
`helm-org-rifle-directories-filename-regexp'.

\(fn &optional DIRECTORIES TOGGLE-RECURSION)" t nil)

(autoload 'helm-org-rifle-org-directory "helm-org-rifle" "\
Rifle through Org files in `org-directory'.

\(fn)" t nil)
 (autoload 'helm-org-rifle-occur "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-occur-current-buffer "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-occur-directories "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-occur-files "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-occur-agenda-files "helm-org-rifle" nil t)
 (autoload 'helm-org-rifle-occur-org-directory "helm-org-rifle" nil t)

;;;***

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/helm-org-rifle-20181216.1129/helm-org-rifle-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/helm-org-rifle-20181216.1129/helm-org-rifle.el")
;;;;;;  (23833 54319 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; helm-org-rifle-autoloads.el ends here
