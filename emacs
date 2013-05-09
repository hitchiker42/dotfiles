;;put customize stuff in a seperate file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;;maybe set init file
;;(setq user-init-file "~/.emacs.d/init.el"
;;and load in
;;(load-file user-init-file)
;;load packages, pretty important
(package-initialize ())
;;load path modifications & slime stuff
(add-to-list 'load-path "/home/tucker/.emacs.d/my-elisp")
(setq inferior-lisp-program "/home/tucker/usr/bin/sbcl")
(load "/home/tucker/Repo/emacs/geiser/elisp/geiser-load")
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;;load stuff, and one convient alias
(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "C-c r s") 'replace-string)
(global-set-key (kbd "C-c r") 'replace-regexp)
(require 'llvm-mode)
(require 'ats-mode)
(require 'rainbow-delimiters)
(require 'auto-complete)
(require 'quack)
(require 'geiser)
(require 'w3m)
(require 'go-mode)
(require 'shen-mode)
(require 'magit)
;;need to add this elisp file to the Repo
(require 'wind-swap)
;;startup any useful modes
(global-rainbow-delimiters-mode)
(global-auto-complete-mode)
(windmove-default-keybindings)
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
;;Does this do anything?
;; (require 'compile)
;; (add-to-list
;;  'compilation-error-regexp-alist
;;  '("^\\([^ \n]+\\)(\\([0-9]+\\)): \\(?:error\\|.\\|warnin\\(g\\)\\|remar\\(k\\)\\)"
;;    1 2 nil (3 . 4)))
