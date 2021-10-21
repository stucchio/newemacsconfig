;Use f1 for help of various sorts
(global-set-key [(control f1)] 'apropos)
(global-set-key [(M f1)] 'describe-function)
(global-set-key [(f1)] 'crux-create-scratch-buffer)
; f2 for buffer revert
(global-set-key [(f2)] 'revert-buffer)
;Makes f4 key go back in buffer list, C-f4 kills buffer
(global-set-key [(f4)] `delete-frame)
(global-set-key [(control f4)] (lambda () (interactive) (kill-buffer (current-buffer))))

;;F5 is unboundfor org-mode stuff

;;F6 controls the shell
(global-set-key [(f6)] 'multi-eshell-switch)
(global-set-key [(control f6)] 'multi-eshell)
(global-set-key [(M f6)] 'multi-eshell-go-back)

;;Registers
(global-set-key [(f7)] 'helm-register)
(global-set-key [(control f7)] 'copy-to-register)
(global-set-key [(M f7)] 'window-configuration-to-register)

;; F8 controls bookmarks
(global-set-key [(control f8)] 'bm-toggle)
(global-set-key [(f8)] 'bm-next)
;; F9 controls evaling lisp
(global-set-key [(f9)] 'eval-last-sexp)
(global-set-key [(control f9)] 'fc-eval-and-replace)
(global-set-key [(M f9)] 'execute-extended-command)
;;F10 org-mode
(global-set-key [(f10)] `org-capture)
(global-set-key [(control f10)] 'org-tags-view)
(global-set-key [(M f10)] 'helm-org-rifle-org-directory)
;; F11 controls keyboard macros
(global-set-key [(control f11)] 'start-or-end-kbd-macro) ;One-button recording of kbd macros
(global-set-key [(control M f11)] 'name-last-kbd-macro) ;One button naming of last kbd macro
(global-set-key [(f11)] 'call-last-kbd-macro) ;one button calling of kbd macros
;; F12 tries to vc commit
;; Tries to run either appropriate version control commit commanddarcsum-no-duplicate-buffer or hg-commit start, i.e. run darcs or mercurial. Raise error message if neither one works.
(global-set-key [(f12)] 'magit-status)
(global-set-key [(control f12)] 'magit-push)
(global-set-key [(M f12)] 'magit-branch)

(global-set-key "\C-a" 'crux-move-beginning-of-line)

;;******** Helm ********
(global-set-key "\M-y" 'helm-show-kill-ring)
(global-set-key "\M-x" 'helm-M-x)
(global-set-key "\C-x\C-f" 'helm-for-files)
(global-set-key "\C-s" 'helm-multi-swoop-projectile)

;;******** projectile ********
(global-set-key [(control tab)] 'helm-projectile)
(global-set-key "\C-l" 'wg-switch-to-workgroup)
(global-set-key "\C-\M-w" 'delete-region)

;;******** wrap-region stuff ********
(global-set-key "(" (wrap-region-with-function "(" ")"))
(global-set-key "{" (wrap-region-with-function "{" "}"))
(global-set-key "[" (wrap-region-with-function "[" "]"))

;; **************** Navigation ****************
(global-set-key "\M-gg" 'avy-goto-line)
(global-set-key "\M-g\M-g" 'avy-goto-line)
(global-set-key "\C-\M-s" 'avy-goto-char-timer)
(global-set-key "\C-o" 'ace-window)
(global-set-key "\M-o" 'ace-delete-window)

;;
(global-set-key [(M right)] 'forward-sexp)
(global-set-key [(M left)] 'backward-sexp)
(global-set-key [(M up)] 'backward-up-list)

;Zapping
(global-set-key "\M-z" 'avy-zap-up-to-char-custom)

;Eval
(global-set-key "\C-x\C-e" 'fc-eval-and-replace)
(global-set-key "\C-c\C-d" 'insert-time-at-point)

;; Lisp mode
(add-hook 'emacs-lisp-mode-hook (lambda ()
				  (progn
				    (define-key emacs-lisp-mode-map "\M-k" 'kill-sexp)
				    (define-key emacs-lisp-mode-map "\M-/" 'lisp-complete-symbol)
				    )))

(add-hook 'clojure-mode-hook (lambda ()
			       (progn
				 (define-key clojure-mode-map "\M-k" 'kill-sexp)
				 (define-key clojure-mode-map "\M-/" 'slime-complete-symbol)
				 (define-key clojure-mode-map [(f9)] 'slime-eval-last-expression)
				 (define-key clojure-mode-map [(M f9)] 'slime-eval-buffer)
				 )))

;; LaTeX-mode

(add-hook 'LaTeX-mode-hook (lambda ()
			     (progn
			       (define-key LaTeX-mode-map [(insert)] 'LaTeX-insert-or-change-equation-environment-interactive)
			       (define-key LaTeX-mode-map [(control insert)] 'LaTeX-insert-or-change-theorem-environment-interactive)
			       (define-key LaTeX-mode-map "$" (wrap-region-with-function "$" "$"))
			       )
			     )
	  )

;; Eshell-mode
(add-hook 'eshell-mode-hook
	  '(lambda ()
	     (progn
	       (define-key eshell-mode-map "\C-a" 'eshell-maybe-bol)
	       )
	     )
	  )


;; C++ mode
(add-hook 'c++-mode-hook (lambda () (local-set-key "\C-cm" #'expand-member-functions)))

;; Scala mode
(add-hook 'scala-mode-hook (lambda () (define-key scala-mode-map [(control tab)] 'helm-projectile)))

;; Markdown mode
(add-hook 'markdown-mode-hook (lambda ()
                                (progn
                                  (define-key markdown-mode-map "\C-xo" 'markdown-follow-thing-at-point)
                                  (define-key markdown-mode-map "\C-cl" 'markdown-insert-link)
                                  )))

;; Org mode
(add-hook 'org-mode-hook (lambda ()
			   (progn
			     (define-key org-mode-map [(control shift right)] 'org-shiftright)
			     (define-key org-mode-map [(control shift left)] 'org-shiftleft)
			     (define-key org-mode-map [(control shift up)] 'org-shiftup)
			     (define-key org-mode-map [(control shift down)] 'org-shiftdown)
                             (define-key org-mode-map [(control tab)] 'helm-projectile) ;; override org mode's map
                             (define-key org-mode-map "\C-c\C-i" 'stucchio-org-get-for-papers)
                             (define-key org-mode-map "\C-c\M-i" 'stucchio-org-move-to-papers)
                             (define-key org-mode-map "\M-s" 'org-tags-view)
			     )
			   )
	  )

;; Python mode
(add-hook 'python-mode-hook (lambda ()
                              (progn
                                (define-key elpy-mode-map "\M-/" 'elpy-company-backend)
                                (define-key elpy-mode-map "\M-j" 'elpy-goto-definition)
                                (define-key elpy-mode-map (kbd "C-/") 'comment-or-uncomment-region)
                                )))
