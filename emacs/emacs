;;put customize stuff in a seperate file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;;maybe set init file
(setq user-init-file "~/.emacs.d/init.el"
;;and load in
(load-file user-init-file)
;;load packages, pretty important
(package-initialize ())
;;load path modifications & slime stuff
(add-to-list 'load-path "/home/tucker/.emacs.d/my-elisp")
(setq inferior-lisp-program "/home/tucker/usr/bin/sbcl")
(load "/home/tucker/Repo/emacs/geiser/elisp/geiser-load")
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;;load stuff, and aliases
(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'elisp-mode 'emacs-lisp-mode)
(defalias 'eshell-new 'multi-eshell)
(global-set-key (kbd "C-c r s") 'replace-string)
(global-set-key (kbd "C-c r") 'replace-regexp)
(require 'llvm-mode)
(require 'ats-mode)
(require 'rainbow-delimiters)
(require 'auto-complete)
;;(require 'quack)
;;(require 'geiser)
(require 'w3m-autoloads)
(require 'magit)
(require 'wind-swap)
;;startup any useful modes
(global-rainbow-delimiters-mode)
(global-auto-complete-mode)
(icicles-mode)
(windmove-default-keybindings)
(setq multi-eshell-shell-function '(eshell))
(toggle-diredp-find-file-reuse-dir t)
;;auto-modes
(add-to-list 'auto-mode-alist '("/tmp/mutt.*" . mail-mode))
(add-to-list 'auto-mode-alist '("PKGBUILD" . pkgbuild-mode))
(add-to-list 'auto-mode-alist '("\\.fun\\'" . sml-mode))
;;;Maxima
;;(add-to-list 'load-path ${rootdir}/usr/share/maxima/version/emacs)
(autoload 'maxima-mode "maxima" "Maxima mode" t)
(autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
(autoload 'maxima "maxima" "Maxima interaction" t)
(autoload 'imath-mode "imath" "Imath mode for math formula input" t)
(setq imaxima-use-maxima-mode-flag t)
;;; Backup files
;; Put them in one nice place if possible
(if (file-directory-p "~/.backup")
    (setq backup-directory-alist '(("." . "~/.backup")))
  (message "Directory does not exist: ~/.backup"))
(setq backup-by-copying t    ; Don't delink hardlinks
      delete-old-versions t  ; Clean up the backups
      version-control t      ; Use version numbers on backups,
      kept-new-versions 3    ; keep some new versions
      kept-old-versions 2)   ; and some old ones
;;set theme path based on files in elpa directory
(require 'dash)
(require 's)
(-each
   (-map
      (lambda (item)
      (format "~/.emacs.d/elpa/%s" item))
   (-filter
      (lambda (item) (s-contains? "theme" item))
      (directory-files "~/.emacs.d/elpa/")))
   (lambda (item)
      (add-to-list 'custom-theme-load-path item)))
(load-theme 'zenburn t)
;;Does this do anything?
;; (require 'compile)
;; (add-to-list
;;  'compilation-error-regexp-alist
;;  '("^\\([^ \n]+\\)(\\([0-9]+\\)): \\(?:error\\|.\\|warnin\\(g\\)\\|remar\\(k\\)\\)"
;;    1 2 nil (3 . 4)))
;;;Display message instead of beeping
(setq ring-bell-function
     (lambda ()
        (unless (memq this-command
                      '(isearch-abort abort-recursive-edit exit-minibuffer keyboard-quit))
          (message "*beep*"))))
