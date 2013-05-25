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
 '(auto-insert-mode nil)
 '(background-color "#fdf6e3")
 '(background-mode light)
 '(backup-directory-alist (quote (("\".\"" . "/home/tucker/.backup"))))
 '(c-basic-offset 2)
 '(c-default-style (quote ((awk-mode . "awk") (other . "gnu"))))
 '(column-number-mode t)
 '(cursor-color "#657b83")
 '(custom-enabled-themes (quote (zenburn)))
 '(custom-safe-themes (quote ("f5e56ac232ff858afb08294fc3a519652ce8a165272e3c65165c42d6fe0262a0" "42e8586f2df6b0aec3db4cb4f8e1292623da52f6489364c4278821d9ab44650a" "36a309985a0f9ed1a0c3a69625802f87dee940767c9e200b89cdebdb737e5b29" "5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "11fe58e5dcf648f440f1b601449b5ed2cc73782bb5d206ed910021b6ccdaa8f7" "6b00751018da9a360ac8a7f7af8eb134921a489725735eba663700cebc12fa6f" "0bac11bd6a3866c6dee5204f76908ec3bdef1e52f3c247d5ceca82860cccfa9d" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" default)))
 '(delete-old-versions t)
 '(display-time-24hr-format t)
 '(doc-view-continuous t)
 '(fill-column 79)
 '(foreground-color "#657b83")
 '(global-whitespace-mode t)
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
 '(version-control t)
 '(whitespace-indentation (quote whitespace-space))
 '(whitespace-style (quote (face spaces trailing lines space-before-tab newline indentation empty space-after-tab space-mark newline-mark)))
 '(whitespace-tab (quote whitespace-space)))
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
