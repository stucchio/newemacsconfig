;;; scala-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "scala-mode" "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode.el"
;;;;;;  "c28a8d72c10cdf437c8341f11724b6dd")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode.el

(autoload 'scala-mode "scala-mode" "\
Major mode for editing Scala code.
When started, run `scala-mode-hook'.
\\{scala-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads nil "scala-mode-auto" "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-auto.el"
;;;;;;  "533dab715b11da6e28d6f5ebb6d7eb94")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-auto.el

(add-to-list 'auto-mode-alist '("\\.scala\\'" . scala-mode))

;;;***

;;;### (autoloads nil "scala-mode-inf" "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-inf.el"
;;;;;;  "c6a4292e2f13ca2efe50fb772387cb83")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-inf.el

(autoload 'scala-interpreter-running-p-1 "scala-mode-inf" "\


\(fn)" nil nil)

(autoload 'scala-run-scala "scala-mode-inf" "\
Run a Scala interpreter in an Emacs buffer

\(fn CMD-LINE)" t nil)

(autoload 'scala-switch-to-interpreter "scala-mode-inf" "\
Switch to buffer containing the interpreter

\(fn)" t nil)

(autoload 'scala-eval-region "scala-mode-inf" "\
Send current region to Scala interpreter.

\(fn START END)" t nil)

(autoload 'scala-eval-definition "scala-mode-inf" "\
Send the current 'definition' to the Scala interpreter.
This function's idea of a definition is the block of text ending
in the current line (or the first non-empty line going
backwards), and begins in the first line that is not empty and
does not start with whitespace or '{'.

For example:

println( \"aja\")
println( \"hola\" )

if the cursor is somewhere in the second print statement, the
interpreter should output 'hola'.

In the following case, if the cursor is in the second line, then
the complete function definition will be send to the interpreter:

def foo =
  1 + 2

\(fn)" t nil)

(autoload 'scala-eval-buffer "scala-mode-inf" "\
Send whole buffer to Scala interpreter.

\(fn)" t nil)

(autoload 'scala-load-file "scala-mode-inf" "\
Load a file in the Scala interpreter.

\(fn FILE-NAME)" t nil)

(autoload 'scala-quit-interpreter "scala-mode-inf" "\
Quit Scala interpreter.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-auto.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-constants.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-feature-electric.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-feature-speedbar.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-feature-tags.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-feature.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-fontlock.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-indent.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-inf.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-lib.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-navigation.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-pkg.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-ui.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode-variables.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/scala-mode-0.0.2/scala-mode.el")
;;;;;;  (22847 61574 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; scala-mode-autoloads.el ends here
