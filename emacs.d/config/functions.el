;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                 FUNCTIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Toggle Solarized
(defun toggle-solarized ()
  (interactive)
  (if (string-equal current-theme "solarized-dark")
    (progn
      (set-solarized-light)
      (message current-theme))
    (progn
      (set-solarized-dark)
      (message current-theme))))

;; Toggle Evil
(defun toggle-evilmode ()
  (interactive)
  (if (bound-and-true-p evil-local-mode)
    (progn
      ; go emacs
      (evil-local-mode (or -1 1))
      (undo-tree-mode (or -1 1))
      (set-variable 'cursor-type 'bar)
      (message "Evil mode disabled"))
    (progn
      ; go evil
      (evil-local-mode (or 1 1))
      (set-variable 'cursor-type 'box)
      (message "Evil mode enabled"))))

;; Toggle header-line
(defun toggle-header-line ()
  (interactive)
  (if (eq header-line-var t)
    (progn
      ; turn off
      (setq current-header-line header-line-format)
      (setq header-line-var nil)
      (setq header-line-format nil)
      (message "Header-line disabled"))
    (progn
      ; turn on
      (setq header-line-format current-header-line)
      (setq header-line-var t)
      (message "Header-line enabled"))))

;; Close all buffers
(defun close-all-buffers ()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))

;; Toggle mode-line
(defun toggle-mode-line ()
  (interactive)
  (if (eq mode-line-var t)
    (progn
      ; turn off
      (setq current-mode-line mode-line-format)
      (setq mode-line-var nil)
      (setq mode-line-format nil)
      (message "Mode-line disabled"))
    (progn
      ; turn on
      (setq mode-line-format current-mode-line)
      (setq mode-line-var t)
      (force-mode-line-update)
      (redraw-display)
      (message "Mode-line enabled"))))

;; Set solarized dark
(defun set-solarized-dark()
    (interactive)
    (setq current-theme "solarized-dark")
    (setq mode-line-var t)
    (setq header-line-var t)
    (load-theme 'solarized-dark)
    (set-face-background 'linum "#073642")
    (custom-set-faces
    '(header-line ((t (:background "#073642" :foreground "#586E75" :box (:line-width 1 :color "#073642" :style unspecified) :overline nil :underline nil))))
    '(mode-line ((t (:background "#073642" :foreground "#839496" :box (:line-width 1 :color "#073642" :style unspecified) :overline nil :underline nil))))
    '(mode-line-buffer-id ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
    '(mode-line-buffer-id-inactive ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
      '(mode-line-inactive ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
      '(vertical-border ((t (:foreground "#002B36"))))))

;; Set solarized light
(defun set-solarized-light()
    (interactive)
    (setq current-theme "solarized-light")
    (load-theme 'solarized-light)
    (set-face-background 'linum "#EEE8D5")
    (custom-set-faces
      '(header-line ((t (:background "#EEE8D5" :foreground "#93A1A1" :box (:line-width 1 :color "#EEE8D5" :style unspecified) :overline nil :underline nil))))
      '(mode-line ((t (:background "#EEE8D5" :foreground "#93A1A1" :box (:line-width 1 :color "#EEE8D5" :style unspecified) :overline nil :underline nil))))
      '(mode-line-buffer-id ((t (:foreground "#93A1A1"))))
      '(mode-line-buffer-id-inactive ((t (:foreground "#FDF6E3"))))
      '(mode-line-inactive ((t (:background "#839496" :foreground "#FDF6E3" :box (:line-width 1 :color "#839496" :style unspecified) :overline nil :underline nil))))
      '(vertical-border ((t (:foreground "#FDF6E3"))))))

;; Select word
  (defun my-mark-current-word (&optional arg allow-extend)
    "Put point at beginning of current word, set mark at end."
    (interactive "p\np")
    (setq arg (if arg arg 1))
    (if (and allow-extend
             (or (and (eq last-command this-command) (mark t))
                 (region-active-p)))
        (set-mark
         (save-excursion
           (when (< (mark) (point))
             (setq arg (- arg)))
           (goto-char (mark))
           (forward-word arg)
           (point)))
      (let ((wbounds (bounds-of-thing-at-point 'word)))
        (unless (consp wbounds)
          (error "No word at point"))
        (if (>= arg 0)
            (goto-char (car wbounds))
          (goto-char (cdr wbounds)))
        (push-mark (save-excursion
                     (forward-word arg)
                     (point)))
        (activate-mark))))

;; iedit
(defun iedit-dwim (arg)
  "Starts iedit but uses \\[narrow-to-defun] to limit its scope."
  (interactive "P")
  (if arg
      (iedit-mode)
    (save-excursion
      (save-restriction
        (widen)
        ;; this function determines the scope of `iedit-start'.
        (if iedit-mode
            (iedit-done)
          ;; `current-word' can of course be replaced by other
          ;; functions.
          ;(narrow-to-defun)
          (iedit-start (current-word) (point-min) (point-max)))))))

;; Absolute and Relative numbers
(defun relative-abs-line-numbers-format (offset)
  "The default formatting function.
Return the absolute value of OFFSET, converted to string."
  (if (= 0 offset)
      (number-to-string (line-number-at-pos))
    (number-to-string (abs offset))))

;; Set line-number color
(defvar-local endless/margin-overlays nil
  "List of overlays in current buffer.")

(defun endless/setup-margin-overlays ()
  "Put overlays on each line which is visually wrapped."
  (interactive)
  (let ((ww (- (window-width)
               (if (= 0 (or (cdr fringe-mode) 1)) 1 0)))
        ov)
    (mapc #'delete-overlay endless/margin-overlays)
    (save-excursion
      (goto-char (point-min))
      (while (null (eobp))
        ;; On each logical line
        (forward-line 1)
        (save-excursion
          (forward-char -1)
          ;; Check if it has multiple visual lines.
          (while (>= (current-column) ww)
            (endles/make-overlay-at (point))
            (forward-char (- ww))))))))

(defun endles/make-overlay-at (p)
  "Create a margin overlay at position P."
  (push (make-overlay p (1+ p)) endless/margin-overlays)
  (overlay-put
   (car endless/margin-overlays) 'before-string
   (propertize "~"  'display endless/margin-display)))
(add-hook 'linum-before-numbering-hook #'endless/setup-margin-overlays)
;; Cycle buffers
;(load-library "cycle-buffer")
