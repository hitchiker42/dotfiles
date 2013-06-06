;;Emacs Custom File
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-math-list (quote (("2" "mathrm" "\"AMS\"\"Special\"" nil) ("1" "frac" "" nil))))
 '(LaTeX-mode-hook (quote (preview-mode-setup latex-math-mode)) t)
 '(ac-disable-inline t)
 '(ac-trigger-key "TAB")
 '(align-c++-modes (quote (c++-mode c-mode java-mode d-mode)))
 '(c-basic-offset 2)
 '(c-default-style (quote ((awk-mode . "awk") (other . "gnu"))))
 '(column-number-mode t)
 '(display-time-24hr-format t)
 '(doc-view-continuous t)
 '(emacs-lisp-mode-hook) (quote (turn-on-eldoc-mode))
 '(eshell-mode-hook (quote (eldoc-mode))
 '(fill-column 79)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(python-python-command "python3")
 '(quack-default-program "racket")
 '(quack-global-menu-p nil)
 '(scheme-program-name "csi")
 '(sml-electric-pipe-mode nil)
 '(sml-indent-args 2)
 '(sml-indent-level 2)
 '(text-mode-hook (quote (turn-on-flyspell turn-on-auto-fill text-mode-hook-identify)))
 '(whitespace-action (quote (cleanup)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(icicle-candidate-part ((t (:background "dark slate blue"))))
 '(icicle-current-candidate-highlight ((t (:background "brown4"))))
 '(icicle-multi-command-completion ((t (:background "dim gray" :foreground "dark cyan"))))
 '(icicle-mustmatch-completion ((t (:box (:line-width -2 :color "dark slate gray")))))
 '(whitespace-empty ((t (:background "grey30" :foreground "grey30"))))
 '(whitespace-indentation ((t (:background "dark gray" :foreground "#cc9393"))))
 '(whitespace-space ((t (:background "grey25" :foreground "grey50"))))
 '(whitespace-space-after-tab ((t (:background "CadetBlue4" :foreground "#cc9393"))) t)
 '(whitespace-space-before-tab ((t (:background "PaleTurquoise4" :foreground "#dfaf8f"))) t)
 '(whitespace-tab ((t (:background "SkyBlue4" :foreground "darkgray"))) t)
 '(whitespace-trailing ((t (:background "grey10" :foreground "grey30" :weight bold)))))
