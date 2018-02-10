;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                   STYLE
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Window system
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0)
  (window-divider-mode nil)
  (tooltip-mode 0))
;(set-face-attribute 'vertical-border nil)
(set-fringe-mode '(0 . 0))
(global-linum-mode t)
(setq linum-format "%3d ")

;; No welcome screen - opens directly in scratch buffer
(setq inhibit-startup-message t
      initial-scratch-message ""
      initial-major-mode 'fundamental-mode
      inhibit-splash-screen t)

;; Change the echo message
(defun display-startup-echo-area-message ()
  (message "Hey there!"))

;; Current window cursor style
(setq-default cursor-type 'box)

;; Non selected window cursor style
(setq-default cursor-in-non-selected-windows 'nil)

;; Don't blink the cursor
(blink-cursor-mode -1)

;; Highlight current line
(global-hl-line-mode 1)

;; Relative line number
;;(global-relative-line-numbers-mode)

;; Fonts
(cond ((eq system-type 'gnu/linux)
       (set-frame-font "DejaVu Sans Mono"))
      ((eq system-type 'darwin)
       ;;(set-frame-font "Menlo"))
       (set-frame-font "PragmataPro Awesome 10"))
      ((eq system-type 'windows-nt)
       (set-frame-font "Lucida Sans Typewriter")))


;; Powerline
;; (powerline-default-theme)

;; Powerline separator utf-8
;;(setq powerline-default-separator 'utf-8)

;; No need to confirm custom theme loading
(setq sml/no-confirm-load-theme t)

;; Custom Themes Path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")












;; write a function to do the spacing
(defun simple-mode-line-render (left right)
  "Return a string of `window-width' length containing LEFT, and RIGHT
 aligned respectively."
  (let* ((available-width (- (window-width) (length left) 2)))
    (format (format " %%s %%%ds " available-width) left right)))


(setq evil-mode-line-format '(before . mode-line-front-space))
;; use the function in conjunction with :eval and format-mode-line in your mode-line-format
(setq-default mode-line-format
      '((:eval (simple-mode-line-render
                ;; left
                (format-mode-line "%b [%m] [%*]")
                ;; right
                (format-mode-line "Line: %l/%i Column: %3c")))))
;; Mode-line
;; (setq-default mode-line-format
;;               '("%e"
;; 		mode-line-front-space
		
;;                 Standard info about the current buffer
;;                 mode-line-client
;;                 mode-line-modified
;;                 mode-line-remote
;;                 mode-line-mule-info
;;                 mode-line-frame-identification
;; 		"%b"
;; 		" "
;; 		;; mode-line-position
;;                 Some specific information about the current buffer:
;;                 lunaryorn-projectile-mode-line ; Project information
;;                 (vc-mode lunaryorn-vc-mode-line) ; VC information
;;                 (flycheck-mode flycheck-mode-line) ; Flycheck status
;;                 (multiple-cursors-mode mc/mode-line) ; Number of cursors
;;                 Misc information, notably battery state and function name
;;                 " "
;;                 mode-line-misc-info
;;                 And the modes, which I don't really care for anyway
;;                 " " mode-line-modes mode-line-end-spaces
;; 		"[%l:%c]"
;; 		))

;; (setq-default header-line-format
;;               '("%f | %F"
;; 		mode-line-percentage
;;                 ))

(set-solarized-dark)
