;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                    INIT
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; Here be dragons
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Increase the garbage collection threshold to 500 MB to ease startup
;(setq gc-cons-threshold (* 500 1024 1024))

;; CUSTOM
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" default)))
 '(global-hl-line-mode t)
 '(package-selected-packages (quote (use-package iedit highlight-parentheses evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(header-line ((t (:background "#073642" :foreground "#586E75" :box (:line-width 1 :color "#073642" :style unspecified) :overline nil :underline nil))))
 '(mode-line ((t (:background "#073642" :foreground "#839496" :box (:line-width 1 :color "#073642" :style unspecified) :overline nil :underline nil))))
 '(mode-line-buffer-id ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
 '(mode-line-buffer-id-inactive ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
 '(mode-line-inactive ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
 '(vertical-border ((t (:foreground "#002B36")))))

;; Go full-screen now!
(set-frame-parameter nil 'fullscreen 'fullboth)

;; MELPA Start
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Loading config
(add-to-list 'load-path "~/.emacs.d/config/")
(add-to-list 'load-path "~/.emacs.d/elisp/")
(load-library "loader")

;; Garbage collector - decrease threshold to 5 MB
;(add-hook 'after-init-hook (lambda () (setq gc-cons-threshold (* 5 1024 1024))))
;; init.el ends here
