;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(defvar emacs-root (if (or (eq system-type 'cygwin32)
			   (eq system-type 'gnu/linux)
			   (eq system-type 'linux)
			   (eq system-type 'usg-unix-v)
			   (eq system-type 'darwin)
			   )
		       (concat (getenv "HOME") "/dotemacs/")
		     "c:/Users/stucc/Dropbox/.emacs.d/")
  "My home directory, the root of my personal emacs load-path.")
(defvar dropbox "c:/Users/stucc/Dropbox/")
(defvar dropbox-linux "/mnt/c/Users/stucc/Dropbox/")

(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(defun add-path (p)
  (add-to-list 'load-path (concat emacs-root p)))
(add-path "lisp")            ;; Simple lisp files I've found, not big enough to need a whole directory
(add-path "my_lisp")         ;; My own personal lisp files, mostly used for customizing particular modes.

;Turn on scroll bars, turn off menu-bar and toolbar
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode 1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;;******** s-expressions ********
(require 'hl-sexp)
(add-hook 'emacs-lisp-mode-hook 'hl-sexp-mode)
(add-hook 'clojure-mode-hook 'hl-sexp-mode)
;;******** bell ********
(setq visible-bell t)
;;******** Hide startup screen ********
(setq inhibit-startup-screen t)

;;******** Show parenthesis ********
(show-paren-mode t)

;;******** wrap-region ********
(require 'wrap-region)
;;******** thrift-mode ********
(require 'thrift-mode)
;;******** yaml-mode ********
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
;******** bookmarking ********
(require 'bm)
;;******** rainbow-mode ********
;; http://julien.danjou.info/rainbow-mode.html
(require 'rainbow-mode)

;;******** python stuff ********
;;(setq python-shell-completed-native nil)
(setq python-shell-interpreter "ipython")
(setq python-shell-interpreter-args "-i --simple-prompt")
(require 'pygen)
(add-hook 'python-mode-hook 'pygen-mode)


;;(setq python-shell-completion-native-enable nil)
;;(elpy-use-ipython)

;;********* Smooth scrolling *********
(require 'smooth-scrolling)

;;******** make scripts executable ********
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;;******** Revert open files, if file on disk changed ********
(global-auto-revert-mode 1) ;; If file attached to unmodified buffer is changed, revert it transparently.

;;******** Save list of files recently opened
(require 'recentf)
(recentf-mode 1)

;;******** crux ********
(require 'crux)

;;******** utility function ********
(load-file (concat emacs-root "my_lisp/misc.el"))

;;******** eshell custom ********
(require 'multi-eshell)
(defalias 'emacs 'find-file) ;;This binds the command emacs to find-file. Useful in eshell.
(defalias 'more 'find-file-temporary) ;;Binds command more to find-file-temporary. Opens file in split window.
(load-file (concat emacs-root "my_lisp/eshell-custom.el"))

;;******** tempbuf ********
;; Kill buffers after a while, if I don't really want them
(require 'tempbuf)
(add-hook 'Man-mode-hook 'turn-on-tempbuf-mode)              ;;Kill man pages after a while
(add-hook 'view-mode-hook 'turn-on-tempbuf-mode)             ;;kill view pages after some time
(add-hook 'apropos-mode-hook 'turn-on-tempbuf-mode)          ;;Kill apropos buffers
(add-hook 'fundamental-mode-hook 'turn-on-tempbuf-mode)      ;;Kill LaTeX-mode's old buffers
(add-hook 'ps-mode-hook 'turn-on-tempbuf-mode)               ;;Kill ps-mode
(add-hook 'dired-mode-hook 'turn-on-tempbuf-mode)            ;;Kill old dired buffers
(add-hook 'reftex-toc-mode-hook 'turn-on-tempbuf-mode)       ;;Kill old reftex table-of-contents
(add-hook 'bibtex-mode-hook 'turn-on-tempbuf-mode)           ;;Kill old bibtex; probably just opened by reftex
(add-hook 'ediff-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'ediff-meta-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'darcsum-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'compilation-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'compile-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'slime-macroexpansion-minor-mode-hook 'turn-on-tempbuf-mode)
(add-hook 'org-agenda-mode-hook 'turn-on-tempbuf-mode)

;;******** windmove ********
(when (fboundp 'windmove-default-keybindings) ;;Turns on windmove mode: shift+arrow keys move between windows.
  (windmove-default-keybindings))

;;********** dired **********
(require 'dired-x)
(setq-default dired-omit-files-p t) ; this is buffer-local variable
(setq dired-omit-files "^\\.?#\\|^\\.$\\$" )

;;******** Spaces instead of tabs ********
(setq-default indent-tabs-mode nil)

;;Billw color theme
(add-path "site-lisp/color-theme") ;;Color themes
(load-file (concat emacs-root "site-lisp/color-theme/themes/color-theme-library.el"))
(color-theme-billw)
;(set-face-background 'hl-line "#060606")
(set-face-background 'hl-sexp-face "#250606")
(set-face-attribute 'default nil :height 120)

(transient-mark-mode 1)
(add-hook 'write-file-functions 'delete-trailing-whitespace)
(setq truncate-partial-width-windows 'nil) ;;Makes word wrapping work even after split horizontally

;;********* Javascript mode *********
;(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

;******** Markdown mode ********
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;******** workgroups for windows ********
;; https://github.com/tlh/workgroups.el
(require 'workgroups)
(workgroups-mode)
(wg-toggle-morph) ;; Don't want stupid special effects
(setq wg-file "c:/Users/stucc/Dropbox/.emacs.d/workgroups.el")
(add-hook 'kill-emacs-hook (lambda () (progn
                                        (wg-update-all-workgroups)
                                        (setq current-prefix-arg '(4))
                                        (wg-save wg-file)
                                        )))
(desktop-save-mode 1) ;; Not part of workgroups, but lets us save our open buffers too

;;******** Finally, set key bindings ********
(load-file (concat emacs-root "keys.el"))

;;******** Helm ********
(require 'helm-config)
(helm-mode)
(setq helm-swoop-pre-input-function
      (lambda () ""))

(with-eval-after-load 'helm-projectile
  (defvar helm-source-file-not-found
    (helm-build-dummy-source
        "Create file"
      :action (lambda (cand) (find-file cand))))


  (add-to-list 'helm-for-files-preferred-list helm-source-file-not-found t)

  ;;******** projectile ********
  (require 'projectile))
(projectile-global-mode)
(require 'helm-projectile)
(add-to-list 'projectile-globally-ignored-directories "build")
(add-to-list 'projectile-globally-ignored-directories "pyenv")
(add-to-list 'projectile-globally-ignored-file-suffixes ".pyc")

(with-eval-after-load 'helm-projectile
  (defvar helm-source-file-not-found
    (helm-build-dummy-source
        "Create file"
      :action (lambda (cand) (find-file cand))))
  (progn
    (add-to-list 'helm-projectile-sources-list helm-source-file-not-found t)
    (setq helm-projectile-sources-list (delete 'helm-source-locate helm-projectile-sources-list))
    )
  )

;;******** eyebrowse ********
;; Workspace manager
;;(eyebrowse-mode t)
;;(setq eyebrowse-mode-line-separator " " eyebrowse-new-workspace t)
;;(dotimes (number 9) (eyebrowse-switch-to-window-config (+ number 1)))
;;(eyebrowse-switch-to-window-config 1)


;;******** Ace-isearch ********
(require 'ace-isearch)
(global-ace-isearch-mode +1)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ace-isearch-function (quote avy-goto-char))
 '(ace-isearch-input-length 3)
 '(ace-isearch-jump-delay 5)
 '(ace-isearch-use-jump (quote printing-char))
 '(helm-projectile-sources-list
   (append helm-projectile-sources-list helm-for-files-preferred-list))
 '(org-export-backends nil)
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (typescript-mode atomic-chrome ein edit-server yaml-mode cdlatex powershell helm-org-rifle use-package pygen avy-flycheck flycheck crux workgroups helm-swoop ace-isearch ace-window ace-jump-mode ace-mc avy-zap avy org-ref eyebrowse paredit-everywhere lua-mode scala-mode paredit markdown-mode bm magit magit-find-file haskell-mode helm helm-ls-git helm-projectile projectile org-plus-contrib python)))
 '(projectile-globally-ignored-file-suffixes
   (append projectile-globally-ignored-file-suffixes
           (quote
            ("~"))))
 '(sentence-end-double-space nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(helm-locate-command "powershell.exe -command \"Get-ChildItem -Path . %s -Include *%s* -Recurse | Select-Object -first 10 Name \"")
 )

;;******** Paredit ********
(require 'paredit)
(dolist (hook '(emacs-lisp-mode-hook
                lisp-mode-hook
                slime-repl-mode-hook
		clojure-mode-hook))
  (add-hook hook #'(lambda nil (paredit-mode 1))))

(find-file (concat emacs-root "init.el"))
(require 'markdown-mode)

;;******** Activate org mode, load files *******

(defvar org-mode-root-folder (concat dropbox "org/"))
(setq org-directory org-mode-root-folder)
(require 'org)

(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(setq org-replace-disputed-keys t)
(global-set-key "\C-ca" 'org-agenda)
(setq org-tab-follows-link t)
(setq org-default-notes-file (concat org-directory "notes.org"))
(setq org-capture-templates
      `(("t" "Todo" entry (file+datetree ,(concat org-directory "tasks.org") )
         "* TODO %?\n  %i\n  %a")
        ("n" "Notes" entry (file+datetree ,(concat org-directory "notes.org") )
         "* %?\nEntered on %U\n  %i\n  %a"))
      )

(setq org-log-done 'time)
(setq org-fontify-done-headline t)

(load-file (concat emacs-root "my_lisp/org-custom.el"))
(setq org-file-apps (cons '("\\.ps\\'" . default) org-file-apps))

(org-agenda nil "t")
(find-file (concat org-directory "papers.org"))
(find-file (concat org-directory "notes.org"))
(setq org-agenda-files
      `(,(concat org-directory "notes.org" ) ,(concat org-directory "tasks.org"))
      )
(setq org-refile-targets '((nil :maxlevel . 9)
                           (org-agenda-files :maxlevel . 9)))
(setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
(setq org-refile-use-outline-path t)                  ; Show full paths for refiling

;;******** mu4e ********
;; (add-path "site-lisp/mu4e") ;;mu4e email client
;; (require 'mu4e)
;; (setq
;;  mu4e-maildir       (concat dropbox "mail") ;; top-level Maildir
;;   mu4e-sent-folder   "/Sent"       ;; folder for sent messages
;;   mu4e-drafts-folder "/Drafts"     ;; unfinished messages
;;   mu4e-trash-folder  "/Trash"      ;; trashed messages
;;   mu4e-refile-folder "/All Mail"
;;   mu4e-get-mail-command (concat "wsl offlineimap -c " (concat dropbox-linux "mail/offlineimaprc"))
;;   mu4e-update-interval 180
;;   mu4e-user-mail-address-list '("hi@chrisstucchio.com" "stucchio@gmail.com" "acctsadmin@chrisstucchio.com" "stucchio@pm.me" "stucchio@protonmail.ch")
;;   mu4e-mu-binary (concat dropbox "mail/mu.bat")
;;   mu4e-compose-signature-auto-include nil
;;   mu4e-windows-compatible-filenames t)

;; (require 'starttls)
;; (require 'smtpmail)

;; (setq message-send-mail-function 'smtpmail-send-it
;;    starttls-use-gnutls t
;;    smtpmail-starttls-credentials '(("127.0.0.1" 1025 nil nil))
;;    smtpmail-auth-credentials '(("127.0.0.1" 1025 "hi@chrisstucchio.com" "EI5FVwhTjYGRCykInx1DUw"))
;;    smtpmail-default-smtp-server "127.0.0.1"
;;    smtpmail-smtp-server "127.0.0.1"
;;    smtpmail-smtp-service 1025
;;    smtpmail-auth-credentials (concat dropbox "mail/authinfo")
;;    )

;;******** custom variables ********
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'scroll-left 'disabled nil)

(wg-load wg-file) ;; Load workgroups last after everything else is done

(require 'edit-server)
(edit-server-start)
(load-file (concat emacs-root "my_lisp/edit-server-custom.el"))
