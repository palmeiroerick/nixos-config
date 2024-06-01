(setq inhibit-startup-message t)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(tooltip-mode -1)

(global-display-line-numbers-mode)

(setq standard-indent 2)

;; (set-frame-font "JetBrainsMono Nerd Font Mono 18")
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
