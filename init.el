
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
		     "c:/Users/stucc/AppData/Roaming/.emacs.d/")
  "My home directory, the root of my personal emacs load-path.")


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
(load "bm")
;;******** rainbow-mode ********
;; http://julien.danjou.info/rainbow-mode.html
(require 'rainbow-mode)

;;******** python stuff ********
(setq python-shell-completed-native nil)
(setq python-shell-interpreter "ipython"
       python-shell-interpreter-args "-i")

;;********* Smooth scrolling *********
(require 'smooth-scrolling)

;;******** make scripts executable ********
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;;******** Revert open files, if file on disk changed ********
(global-auto-revert-mode 1) ;; If file attached to unmodified buffer is changed, revert it transparently.

;;******** Save list of files recently opened
(require 'recentf)
(recentf-mode 1)

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

(transient-mark-mode 1)
(add-hook 'write-file-functions 'delete-trailing-whitespace)
(setq truncate-partial-width-windows 'nil) ;;Makes word wrapping work even after split horizontally

;;********* Javascript mode *********
;(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))

;******** Markdown mode ********
(autoload 'markdown-mode "markdown-mode.el"
   "Major mode for editing Markdown files" t)
(setq auto-mode-alist
   (cons '("\\.md" . markdown-mode) auto-mode-alist))

;;******** Finally, set key bindings ********
(load-file (concat emacs-root "keys.el"))

;;******** Helm ********
(require 'helm-config)
(helm-mode)

;;******** projectile ********
(require 'projectile)
(projectile-global-mode)
(require 'helm-projectile)

;;******** Helm-projectile configs ********
(custom-set-variables
 '(helm-projectile-sources-list (append helm-projectile-sources-list helm-for-files-preferred-list))
 )

;;******** Activate org mode, load files ********
(find-file (concat emacs-root "init.el"))
(defvar org-mode-root-folder "c:/Users/stucc/Dropbox/org/")
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(setq org-replace-disputed-keys t)
(global-set-key "\C-ca" 'org-agenda)
(setq org-tab-follows-link t)
(setq org-default-notes-file (concat org-mode-root-folder "notes/capture.org"))
(setq org-capture-templates
      '(("t" "Todo" entry (file+headline (concat org-mode-root-folder "tasks.org") "Uncategorized") "* TODO %?\n  %i\n  %a")
        ("i" "Idea" entry (file+datetree (concat org-mode-root-folder "ideas.org") "Ideas") "* %?\nEntered on %U\n  %i\n  %a")
        ("r" "Toread" entry (file+headline (concat org-mode-root-folder "papers.org") "Uncategorized") "* READ %?\nEntered on %U\n  %i\n  %a")
        )
      )
(setq org-log-done 'time)
(setq org-fontify-done-headline t)

(load-file (concat emacs-root "my_lisp/org-custom.el"))
(setq org-file-apps (cons '("\\.ps\\'" . default) org-file-apps))

(org-agenda nil "t")
(find-file (concat org-mode-root-folder "papers.org"))

;;******** Custom variables ********
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (\`
    ((\,
      (concat org-mode-root-folder "papers.org"))
     (\,
      (concat org-mode-root-folder "tasks.org")))))
 '(org-export-backends (markdown ascii html icalendar latex odt))
 '(org-startup-truncated nil)
 '(package-selected-packages
   (quote
    (magit magit-find-file haskell-mode helm helm-ls-git helm-projectile projectile org-plus-contrib python)))
 '(sentence-end-double-space nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-done ((t (:foreground "PaleGreen" :weight normal :strike-through t)))))
