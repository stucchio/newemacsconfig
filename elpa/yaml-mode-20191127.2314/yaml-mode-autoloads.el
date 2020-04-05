;;; yaml-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "yaml-mode" "../../../../AppData/Roaming/.emacs.d/elpa/yaml-mode-20191127.2314/yaml-mode.el"
;;;;;;  "d2a0c05d3a4baf644c42819381bf4d76")
;;; Generated autoloads from ../../../../AppData/Roaming/.emacs.d/elpa/yaml-mode-20191127.2314/yaml-mode.el

(let ((loads (get 'yaml 'custom-loads))) (if (member '"yaml-mode" loads) nil (put 'yaml 'custom-loads (cons '"yaml-mode" loads))))

(autoload 'yaml-mode "yaml-mode" "\
Simple mode to edit YAML.

\\{yaml-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.\\(e?ya?\\|ra\\)ml\\'" . yaml-mode))

;;;***

;;;### (autoloads nil nil ("../../../../AppData/Roaming/.emacs.d/elpa/yaml-mode-20191127.2314/yaml-mode-autoloads.el"
;;;;;;  "../../../../AppData/Roaming/.emacs.d/elpa/yaml-mode-20191127.2314/yaml-mode.el")
;;;;;;  (24201 9962 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; yaml-mode-autoloads.el ends here
