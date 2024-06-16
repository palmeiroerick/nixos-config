(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)

(set-fringe-mode 0)

(setq scroll-step 1)
(setq scroll-margin 8)
(setq scroll-conservatively 101)
(setq hscroll-step 1)
(setq hscroll-margin 18)
(setq hscroll-conservatively 101)
(setq scroll-preserve-screen-position nil)

(set-default 'truncate-lines t)
(setq visual-line-fringe-indicators nil)
(set-display-table-slot standard-display-table 'truncation ?\ )

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)
(setq-default display-line-numbers-width 3)

(global-hl-line-mode 0)

(custom-set-faces
 '(line-number ((t (:background "#1a1b26" :foreground "#414868"))))
 '(line-number-current-line ((t (:background "#1a1b26" :foreground "#ff9e64")))))

(set-face-attribute 'mode-line nil :box nil)
(set-face-attribute 'mode-line-inactive nil :box nil)

;;(custom-set-faces
;; '(line-number-current-line ((t (:inherit line-number)))))

(setq standard-indent 2)

(add-to-list 'default-frame-alist
            '(font . "JetBrainsMono Nerd Font Mono-18"))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'evil)
  (package-install 'evil))

(require 'evil)
(evil-mode 1)

(setq evil-cross-lines t)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'tokyogogh t)
