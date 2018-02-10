;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                  PACKAGES
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Make sure use-package is installed
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; cycle-buffer
(use-package cycle-buffer
    :load-path "~/.emacs.d/elisp/")

;; helm
;(use-package helm
    ;:ensure t)

;; iedit
(use-package iedit
    :ensure t)

;; evil
(use-package evil
    :ensure t)

;; powerline
(use-package powerline
    :ensure t)

;; highlight-parentheses
(use-package highlight-parentheses
    :ensure t)

;; relative-line-numbers
(use-package relative-line-numbers
    :ensure t)

;; solarized-theme
(use-package solarized-theme
  :ensure t
  :init
  ;(load-theme 'solarized-dark)
  (setq current-theme "solarized-dark"))

; restart-emacs
(use-package restart-emacs
    :ensure t)

;; pretty mode
;;(use-package pretty-mode
;;    :ensure t
;;    :init (global-pretty-mode t))

;; smex
(use-package smex
    :ensure t
    :init (smex-initialize))

;; exec-path
(use-package exec-path-from-shell
    :ensure t)

;; ido ubiquitous
(use-package ido-ubiquitous
    :ensure t
    :init 
    (ido-mode 1)
    (setq ido-use-faces nil)
    (ido-everywhere 1)
    (ido-ubiquitous-mode 1))

;; Ido vertical mode
(use-package ido-vertical-mode
    :ensure t
    :init 
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-and-C-p-only))

(use-package flx-ido
    :ensure t
    :init 
    (flx-ido-mode 1)
    (setq ido-enable-flex-matching t))
