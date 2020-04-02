;;; elpy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "elpy" "../../../../AppData/Roaming/.emacs.d/elpa/elpy-1.8.0/elpy.el"
;;;;;;  "67ae75dc3caee1e14ee7ae73a77ace77")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/elpy-1.8.0/elpy.el

(autoload 'elpy-enable "elpy" "\
Enable Elpy in all future Python buffers.

\(fn &optional IGNORED)" t nil)

(autoload 'elpy-mode "elpy" "\
Minor mode in Python buffers for the Emacs Lisp Python Environment.

This mode fully supports virtualenvs. Once you switch a
virtualenv using \\[pyvenv-workon], you can use
\\[elpy-rpc-restart] to make the elpy Python process use your
virtualenv.

\\{elpy-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'elpy-config "elpy" "\
Configure Elpy.

This function will pop up a configuration buffer, which is mostly
a customize buffer, but has some more options.

\(fn)" t nil)

(autoload 'elpy-version "elpy" "\
Display the version of Elpy.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/elpy-1.8.0/elpy-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-1.8.0/elpy-pkg.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-1.8.0/elpy-refactor.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-1.8.0/elpy.el")
;;;;;;  (22844 26167 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elpy-autoloads.el ends here
