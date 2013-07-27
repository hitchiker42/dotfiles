;;; -*- mode
;;;My emacs lisp init file, Everything execept for custom set vars/faces 
(add-to-list 'load-path "/home/tucker/.emacs.d/my-elisp")
(add-to-list 'load-path "/home/tucker/.emacs.d")
;;;Put customize stuff in a seperate file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)
;;maybe set init file
;;(setq user-init-file "~/.emacs.d/init.el")
;;and load in
;;(load-file user-init-file)
;;load packages, pretty important
(package-initialize ())
;;;Slime stuff
(setq inferior-lisp-program "/home/tucker/usr/bin/sbcl")
;;(load "/home/tucker/Repo/emacs/geiser/elisp/geiser-load")
(load (expand-file-name "~/quicklisp/slime-helper.el"))
;;;Load stuff, and aliases
(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'elisp-mode 'emacs-lisp-mode)
(defalias 'eshell-new 'multi-eshell)
(defalias 'perl-mode 'cperl-mode)
;;(require 'llvm-mode)
;;(require 'ats-mode)
(require 'rainbow-delimiters)
(require 'auto-complete)
;;(require 'quack)
;;(require 'geiser)
(require 'w3m-autoloads)
(require 'mlton)
(require 'auto-async-byte-compile)
(require 'wind-swap)
(require 'uniquify)
;;;Startup any useful modes
(global-rainbow-delimiters-mode)
(global-auto-complete-mode)
(icicles-mode)
(windmove-default-keybindings)
(toggle-diredp-find-file-reuse-dir 1)
(menu-bar-showhide-tool-bar-menu-customize-disable)
(menu-bar-no-scroll-bar)
(setq-default indent-tabs-mode nil)
(setq 
 ;;not sure if this works
 multi-eshell-shell-function '(eshell)
 icicle-TAB/S-TAB-only-completes-flag t
 org-replace-disputed-keys t
 emacs-lisp-mode-hook '(turn-on-eldoc-mode enable-auto-async-byte-compile-mode)
 ;;This regexp should ignore all backup files
 auto-async-byte-compile-exclude-files-regexp ".*~$\|^#.*#$"
 apropos-do-all t)
;;;Auto-modes
(add-to-list 'auto-mode-alist '("/tmp/mutt.*" . mail-mode))
(add-to-list 'auto-mode-alist '("PKGBUILD" . pkgbuild-mode))
(add-to-list 'auto-mode-alist '("\\.fun\\'" . sml-mode))
(add-to-list 'auto-mode-alist '("\\`\\.?bash" . sh-mode));opening .bash* sets sh-mode
;;;Keys
;;Keys
;;regexp stuff
(global-set-key [?\C-c ?\C-r ?s]  'replace-string)
(global-set-key [?\C-c ?r] 'replace-regexp)
(global-set-key [?\C-s] 'isearch-forward-regexp)
(global-set-key [?\C-r] 'isearch-backward-regexp)
(global-set-key [?\C-\M-s] 'isearch-forward)
(global-set-key [?\C-\M-r] 'isearch-backward)
;;eval stuff
(define-key global-map "\C-cer" 'eval-region)
(define-key global-map "\C-ceb" 'eval-buffer)
(define-key global-map "\C-cef" 'eval-defun)
(define-key global-map "\C-cee" 'eval-expression)
;;f2-map
(require 'my-banish)
(define-prefix-command 'f2-map)
(define-key global-map [f2] 'f2-map)
(define-key f2-map "c" 'comment-region)
(define-key f2-map "u" 'uncomment-region)
(define-key f2-map "w" 'whitespace-cleanup)
(define-key f2-map "i" 'indent-region)
(define-key f2-map "e" 'multi-eshell)
(define-key f2-map "p" 'list-packages)
(define-key f2-map "b" 'my-banish-mouse)
;;prefix keys ESC(esc-map),C-h(help-map),C-c(mode-specific-map)
;;C-x(ctl-x-map),C-x RET(mule-keymap),C-x 4/5(ctl-4-map,ctl-5-map)
;;C-x 6 (2C-mode-map),C-x v(vc-prefix-map)
;;M-o(facemenu-map), C-x @,C-x a i,C-x ESC & ESC ESC(unamed keymaps)
;;C-x ESC
;; (keymap 
;;  (backtab . icicle-complete-keys) 
;;  (58 . repeat-complex-command); :
;;  (27 . repeat-complex-command));ESC
;;;M-s(search-map)
;; (keymap 
;;  (backtab . icicle-complete-keys) 
;;  (46 . isearch-forward-symbol-at-point) ;.
;;  (95 . isearch-forward-symbol) ;_
;;  (119 . isearch-forward-word) ;w
;;  (104 keymap ;h
;;       (backtab . icicle-complete-keys) 
;;       (119 . hi-lock-write-interactive-patterns);w
;;       (102 . hi-lock-find-patterns);f
;;       (117 . unhighlight-regexp);u
;;       (46 . highlight-symbol-at-point);.
;;       (108 . highlight-lines-matching-regexp);l
;;       (112 . highlight-phrase);p
;;       (114 . highlight-regexp));r
;;  (111 . occur))
;;;M-g(goto-map)
;; (keymap 
;;  (backtab . icicle-complete-keys)
;;  (9 . move-to-column);tab
;;  (112 . previous-error);p
;;  (110 . next-error);n
;;  (27 keymap ;;ESC/Meta/Alt
;;      (backtab . icicle-complete-keys)
;;      (112 . previous-error);p
;;      (110 . next-error);n
;;      (103 . goto-line));g
;;  (103 . goto-line);(M-)g
;;  (99 . goto-char));c
;; \M-p and \M-n are unbound in the global keymap



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
;;;Set theme path based on files in elpa directory
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

;;;No bell, too annoying
(setq ring-bell-function nil)

;;;Doremi
(eval-after-load "doremi-cmd"
  '(progn
     (unless (fboundp 'doremi-prefix)
       (defalias 'doremi-prefix (make-sparse-keymap))
       (defvar doremi-map (symbol-function 'doremi-prefix)
         "Keymap for Do Re Mi commands."))
     (define-key global-map "\C-xt"  'doremi-prefix)
     (define-key doremi-map "b" 'doremi-buffers+) ; Buffer `C-x t b'
     (define-key doremi-map "g" 'doremi-global-marks+) ; Global mark `C-x t g'
     (define-key doremi-map "m" 'doremi-marks+) ; Mark `C-x t m'
     (define-key doremi-map "r" 'doremi-bookmarks+) ; `r' for Reading books `C-x t r'
     (define-key doremi-map "s" 'doremi-color-themes+) ; `s' for color Schemes `C-x t s'
     (define-key doremi-map "w" 'doremi-window-height+))) ; Window `C-x t w'
(require 'doremi)
(require 'doremi-cmd)

;;;Org stuff
(setq org-todo-keywords
      '((sequence "TODO" "|" "DONE")
        (sequence "|" "CANCELED")
        (sequence "OPT" "|" "OPT(DONE)")
        (sequence "OPT(CANCELED)")))

(put 'overwrite-mode 'disabled t)
(put 'narrow-to-region 'enabled t)

;; Local Variables:
;; mode: emacs-lisp
;; End:
