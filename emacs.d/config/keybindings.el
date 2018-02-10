;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                KEYBINDINGS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; smex
(global-set-key (kbd "M-x") 'smex)

;; evil-mode
(global-set-key (kbd "C-c C-e") 'toggle-evilmode)

;; header-line
(global-set-key (kbd "C-c C-h") 'toggle-header-line)

;; toggle mode-line
(global-set-key (kbd "C-c C-b") 'toggle-mode-line)

;; toggle solarized
(global-set-key (kbd "C-c C-1") 'toggle-solarized)

;; toggle linum
(global-set-key (kbd "C-c C-n") 'global-linum-mode)

;; Better buffer list
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Save desktop session
(global-set-key (kbd "C-c C-s") 'my-desktop-save)

;; Restore desktop session
(global-set-key (kbd "C-c C-o") 'my-desktop-read)

;; Select word
;; (global-set-key (kbd "C-u") 'my-mark-current-word)

;; iedit
(global-set-key (kbd "C-;") 'iedit-dwim)

;; Toggle full-screen
(global-set-key (kbd "<C-s-268632070>") 'toggle-frame-fullscreen)

;; Restart Emacs
(global-set-key (kbd "C-x C-§") 'restart-emacs)

;; Cycle buffer
(global-set-key (kbd "s-p") 'cycle-buffer-backward)
(global-set-key (kbd "s-n") 'cycle-buffer)
(global-set-key (kbd "M-p") 'cycle-buffer-backward-permissive)
(global-set-key (kbd "M-n") 'cycle-buffer-permissive)

;; Sessions
(global-set-key (kbd "s-0") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/s0")))
(global-set-key (kbd "s-1") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/s1")))
(global-set-key (kbd "s-2") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/s2")))
(global-set-key (kbd "s-3") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/s3")))
(global-set-key (kbd "s-4") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/s4")))
(global-set-key (kbd "s-5") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/s5")))
(global-set-key (kbd "s-)") (lambda () (interactive) (desktop-clear) (desktop-read "~/.emacs.d/sessions/ss")))
