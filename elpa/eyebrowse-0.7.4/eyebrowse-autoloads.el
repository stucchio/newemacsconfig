;;; eyebrowse-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "eyebrowse" "../../../../AppData/Roaming/.emacs.d/elpa/eyebrowse-0.7.4/eyebrowse.el"
;;;;;;  "e8a684e281b5dba7fd2944ed8eac9883")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/eyebrowse-0.7.4/eyebrowse.el

(autoload 'eyebrowse-setup-evil-keys "eyebrowse" "\
Set up key bindings specific to Evil.
Currently only gt, gT, gc and zx are supported.

\(fn)" nil nil)

(autoload 'eyebrowse-setup-opinionated-keys "eyebrowse" "\
Set up more opinionated key bindings for using eyebrowse.

M-0..M-9, C-< / C->, C-'and C-\" are used for switching.  If Evil
is detected, extra key bindings will be set up with
`eyebrowse-setup-evil-keys' as well.

\(fn)" nil nil)

(defvar eyebrowse-mode nil "\
Non-nil if Eyebrowse mode is enabled.
See the `eyebrowse-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `eyebrowse-mode'.")

(custom-autoload 'eyebrowse-mode "eyebrowse" nil)

(autoload 'eyebrowse-mode "eyebrowse" "\
Toggle `eyebrowse-mode'.
This global minor mode provides a set of keybindings for
switching window configurations.  It tries mimicking the tab
behaviour of `ranger`, a file manager.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/eyebrowse-0.7.4/eyebrowse-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/eyebrowse-0.7.4/eyebrowse.el")
;;;;;;  (22924 11548 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; eyebrowse-autoloads.el ends here
