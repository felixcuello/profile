;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Felix Cuello"
      user-mail-address "felix.cuello@gmail.com")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  FLYCHECK features
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-popup-rule! "^\\*Flycheck errors\\*$" :side 'bottom :size 0.05)
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
(setq flycheck-gcc-language-standard "c++11")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; To use rben v
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(when (daemonp)
  (exec-path-from-shell-initialize))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;  Treemacs configuration
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(map! :after treemacs
      :leader
      :n "-" #'evil-window-prev)

(map! :after treemacs
      :leader
      :n "=" #'evil-window-next)

(setq treemacs-follow-mode 1)


;; I don't like emacs to ask me to QUIT ever time
(setq confirm-kill-emacs nil)

;; (setq evil-default-state 'emacs)
;; (setq doom-leader-key "M-m"
;;       doom-leader-alt-key "M-m")

(setq neo-window-width 30)

(setq search-invisible nil)

;; Shows the diff color in the margin
(setq diff-hl-mode 1)
(setq diff-hl-dir-mode 1)

;; (setq neo-autorefresh 1)
;; (setq neo-smart-open 1)

;; With this option you don't need to invalidate the cache using
;; projectile-invalidate-cache when you add or remove files in the project
;; but can be slow if the project has thousands of files
(setq projectile-enable-caching nil)

(setq global-undo-tree-mode 1) ;; TODO: CHECK WHY THIS IS NOT WORKING

(setq doom-font (font-spec
                 :family "Fira Code"
                 ;; :family "Roboto Mono for Powerline"
                 ;; :family "Roboto Mono Light for Powerline"
                 ;; :family "Roboto Mono for Powerline"
                 ;; :family "Source Code Pro for Powerline"
                 ;; :family "Inconsolata for Powerline"
                 ;; :family "Space Mono for Powerline"
                 :size 18
;                 :weight 'semi-light
                 )
      )

(global-set-key (kbd "÷") 'comment-or-uncomment-region)

(global-set-key (kbd "C-?") 'counsel-flycheck)

(global-set-key (kbd "C->") 'dumb-jump-go)
(global-set-key (kbd "C-<") 'dumb-jump-back)

(global-set-key (kbd "C-b") 'counsel-buffer-or-recentf)
(global-set-key (kbd "C-s") '+default/search-buffer)
(global-set-key (kbd "C-o") 'treemacs-add-project)
(global-set-key (kbd "C-n") 'evil-buffer-new)
(global-set-key (kbd "C-p") 'projectile-find-file)

(global-set-key (kbd "M-w") 'kill-this-buffer)
(global-set-key (kbd "∑")   'kill-this-buffer)

(global-set-key (kbd "M-d") 'mc/mark-next-like-this-word)
(global-set-key (kbd "∂")   'mc/mark-next-like-this-word)

(global-set-key [S-mouse-1] '+lookup/definition)
(global-set-key [S-mouse-3] '+lookup/references)

; Shortcuts

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(add-to-list 'custom-theme-load-path "~/.doom.d/themes")
(setq doom-theme 'doom-monokai-pro-dark)
;; (setq doom-theme 'flatui)
;; (setq doom-theme 'doom-nord-light)
;; (setq doom-theme 'doom-molokai-dark)
;; (setq doom-theme 'doom-monokai-classic)
;; (setq doom-theme 'doom-laserwave)
;; (setq doom-theme 'doom-acario-dark)
;; (setq doom-theme 'doom-monokai-pro)
;; (setq doom-theme 'doom-snazzy)
;; (setq doom-theme 'doom-challenger-deep)
;; (setq doom-theme 'doom-flatwhite)
;; (setq doom-theme 'doom-tomorrow-night)
;(setq doom-theme 'doom-tomorrow-day)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(put 'projectile-ag 'disabled nil)
(put 'projectile-grep 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (docker-tramp inf-ruby))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
