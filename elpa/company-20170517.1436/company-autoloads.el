;;; company-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "company" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company.el"
;;;;;;  "86ee092b0f8e694e8cc6672e8298498b")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company.el

(autoload 'company-mode "company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific backend, call
it interactively or use `company-begin-backend'.

By default, the completions list is sorted alphabetically, unless the
backend chooses otherwise, or `company-transformers' changes it later.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global Company mode is enabled.
See the `global-company-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company" nil)

(autoload 'global-company-mode "company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

(autoload 'company-manual-begin "company" "\


\(fn)" t nil)

(autoload 'company-complete "company" "\
Insert the common part of all candidates or the current selection.
The first time this is called, the common part is inserted, the second
time, or when the selection has been changed, the selected candidate is
inserted.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "company-abbrev" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-abbrev.el"
;;;;;;  "5c53bd58b979c8d570d3e6f0f4e35579")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-abbrev.el

(autoload 'company-abbrev "company-abbrev" "\
`company-mode' completion backend for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-bbdb" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-bbdb.el"
;;;;;;  "fec5aa48cc472cfddf2eeb9c66ecbd7a")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-bbdb.el

(autoload 'company-bbdb "company-bbdb" "\
`company-mode' completion backend for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-css" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-css.el"
;;;;;;  "537159cbe157b676671148a1e62c2c5c")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-css.el

(autoload 'company-css "company-css" "\
`company-mode' completion backend for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-dabbrev" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-dabbrev.el"
;;;;;;  "b47d55e8fbd9186e33fc6fa1e01685a4")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-dabbrev.el

(autoload 'company-dabbrev "company-dabbrev" "\
dabbrev-like `company-mode' completion backend.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-dabbrev-code" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-dabbrev-code.el"
;;;;;;  "48580f10fbb5c8b3aadae36f968ae8f5")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-dabbrev-code" "\
dabbrev-like `company-mode' backend for code.
The backend looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-elisp" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-elisp.el"
;;;;;;  "05e3f346f5e034870305b85ebbe307d1")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-elisp.el

(autoload 'company-elisp "company-elisp" "\
`company-mode' completion backend for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-etags" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-etags.el"
;;;;;;  "82c04049b6e597f924404e05590b7156")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-etags.el

(autoload 'company-etags "company-etags" "\
`company-mode' completion backend for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-files" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-files.el"
;;;;;;  "52837a9678f74622a57d51960714b299")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-files.el

(autoload 'company-files "company-files" "\
`company-mode' completion backend existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-gtags" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-gtags.el"
;;;;;;  "cf0fb8d3371d0d127d07578233d8ee6f")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-gtags.el

(autoload 'company-gtags "company-gtags" "\
`company-mode' completion backend for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-ispell" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-ispell.el"
;;;;;;  "f44bf84e35b80953b17c66cb18ce4a75")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-ispell.el

(autoload 'company-ispell "company-ispell" "\
`company-mode' completion backend using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-keywords" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-keywords.el"
;;;;;;  "6191f1803d93c5ad177aa48ccb5a07a7")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-keywords.el

(autoload 'company-keywords "company-keywords" "\
`company-mode' backend for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-nxml" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-nxml.el"
;;;;;;  "37e45d49c64cec5c12ba830a380910b2")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-nxml.el

(autoload 'company-nxml "company-nxml" "\
`company-mode' completion backend for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-oddmuse" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-oddmuse.el"
;;;;;;  "4d585ed74b0f1654770bb4486c5554da")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-oddmuse.el

(autoload 'company-oddmuse "company-oddmuse" "\
`company-mode' completion backend for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-semantic" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-semantic.el"
;;;;;;  "2dd2479158efd8b008d9fd5488e31fe4")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-semantic.el

(autoload 'company-semantic "company-semantic" "\
`company-mode' completion backend using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-tempo" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-tempo.el"
;;;;;;  "ef7bf243940ad89d1f44ecffcfa3949c")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-tempo.el

(autoload 'company-tempo "company-tempo" "\
`company-mode' completion backend for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-xcode" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-xcode.el"
;;;;;;  "0106fec3041ec311c0850ad16a5d099a")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-xcode.el

(autoload 'company-xcode "company-xcode" "\
`company-mode' completion backend for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-yasnippet" "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-yasnippet.el"
;;;;;;  "b0537a76e047045c033f5f1756cc97d0")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-yasnippet.el

(autoload 'company-yasnippet "company-yasnippet" "\
`company-mode' backend for `yasnippet'.

This backend should be used with care, because as long as there are
snippets defined for the current major mode, this backend will always
shadow backends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a backend or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other backends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-abbrev.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-bbdb.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-capf.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-clang.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-cmake.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-css.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-dabbrev-code.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-dabbrev.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-eclim.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-elisp.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-etags.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-files.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-gtags.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-ispell.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-keywords.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-nxml.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-oddmuse.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-pkg.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-semantic.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-template.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-tempo.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-xcode.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company-yasnippet.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/company-20170517.1436/company.el")
;;;;;;  (22844 26160 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-autoloads.el ends here
