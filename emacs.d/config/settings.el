;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                  SETTINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Header line
(setq header-line-format t)

;; Backups at .saves folder in the current folder
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.emacs.d/saves/"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t)       ; use versioned backups

;; Autosaving
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t))
      create-lockfiles nil)

;; exec-path-shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; File encoding system
(prefer-coding-system 'utf-8)

;; Default encoding system
(setq-default buffer-file-coding-system 'utf-8-auto-unix)

;; Error message
(setq visible-bell nil)

;; Mute bell
(setq ring-bell-function 'ignore)

;; Truncate lines
(setq-default truncate-lines t)

;; Large file warning
(setq large-file-warning-threshold (* 15 1024 1024))

;; Lazier prompting
(fset 'yes-or-no-p 'y-or-n-p)

(defun display-startup-echo-area-message ()
  (message "Test"))

;; Activate ido
;(ido-mode t)

;; Set relative numbers
;(setq relative-line-numbers-format 'relative-abs-line-numbers-format)
;; Set ENV
(let ((path (shell-command-to-string ". ~/.varalias.sh; echo -n $PATH")))
  (setenv "PATH" path)
  (setq exec-path
        (append
         (split-string-and-unquote path ":")
         exec-path)))

;; Set all-the-icons
;(setq all-the-icons-icon-for-mode 't)
;(setq all-the-icons-icon-for-file 't)
;(setq all-the-icons-icon-for-buffer 't)

;; Helm
(setq helm-split-window-in-side-p t)
(setq helm-split-window-default-side 'below)

;; Expand some words and auto-correct
(setq save-abbrevs 'silently)
(setq-default abbrev-mode t)

;; Cycle buffer
(autoload 'cycle-buffer "cycle-buffer" "Cycle forward." t)
(autoload 'cycle-buffer-backward "cycle-buffer" "Cycle backward." t)
(autoload 'cycle-buffer-permissive "cycle-buffer" "Cycle forward allowing *buffers*." t)
(autoload 'cycle-buffer-backward-permissive "cycle-buffer" "Cycle backward allowing *buffers*." t)
(autoload 'cycle-buffer-toggle-interesting "cycle-buffer" "Toggle if this buffer will be considered." t)

;; Enables highlight-parentheses-mode on all buffers
(define-globalized-minor-mode global-highlight-parentheses-mode
  highlight-parentheses-mode
  (lambda ()
    (highlight-parentheses-mode t)))
(global-highlight-parentheses-mode t)

;; evil
(evil-mode 1)

;; Environment variables
(setenv "AA" "/Users/Hermes/Library/Mobile Documents/com~apple~CloudDocs/Cursus/Linguistique Informatique/Apprentissage Automatique")

;; Evil keybindings
(with-eval-after-load 'evil-maps
  (define-key evil-motion-state-map (kbd ":") 'evil-repeat-find-char)
  (define-key evil-motion-state-map (kbd ";") 'evil-ex))

;; Removes menu bar from terminal
(unless (display-graphic-p)
   (menu-bar-mode -1))

