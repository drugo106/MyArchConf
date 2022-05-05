;; disable backup
(setq make-backup-files nil)

;; disable auto save; stop creating  those #auto-save-file#
(setq auto-save-default nil)

;;remove toolbar
(tool-bar-mode -1)

;;remove menubar
(menu-bar-mode -1)

;;remove scroll bar
(toggle-scroll-bar -1) 

;;keep cursor at same line while scrolling
(setq scroll-preserve-screen-position 1)

;;scroll one line
(setq scroll-step            1
      scroll-conservatively  10000)


(setq x-alt-keysym 'meta)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages
   '(magit company cyberpunk-2019-theme tide auto-complete markdown-mode))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 143 :width normal)))))


;;MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)


(setq-default indent-tabs-mode nil)
(setq-default tab-width 122)
;;(setq c-set-style "k&r")
(setq c-basic-offset 2)

;;(setq-default tab-width 2)

(global-linum-mode t)

(setq line-number-mode t)

(defvar cm-ac-enable t
  "enable cm auto complete on TAB")
 
(defvar cm-ac-menu-lines 20
  "enable cm auto complete on TAB")

;;(ac-config-default)

;; Neotree
(add-to-list 'load-path "~/.emacs.d/pkg/neotree")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(setq neo-theme (if (display-graphic-p) 'icons))
;; icons for neotree
(add-to-list 'load-path "~/.emacs.d/pkg/all-the-icons.el")
(require 'all-the-icons)

;; cyberpunk-theme
(load-theme 'cyberpunk t)
(add-hook 'after-init-hook 
	  (lambda () (load-theme 'cyberpunk t)))

;; minor mode for npm
;;(add-to-list 'load-path "~/.emacs.d/pkg/npm-mode")
;;(require 'npm-mode)
