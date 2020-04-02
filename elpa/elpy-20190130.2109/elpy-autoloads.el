;;; elpy-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "elpy" "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy.el"
;;;;;;  "1da9bc190606771918a559b7f166675b")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy.el

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

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy-django.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy-pkg.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy-profile.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy-refactor.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy-shell.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/elpy-20190130.2109/elpy.el")
;;;;;;  (23648 50015 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; elpy-autoloads.el ends here
