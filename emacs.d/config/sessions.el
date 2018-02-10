;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                  SESSIONS
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Use only one desktop
(setq desktop-path '("~/.emacs.d/sessions/"))
(setq desktop-dirname "~/.emacs.d/sessions/")
(setq desktop-base-file-name "emacs-session")
;; remove desktop after it's been read
;(add-hook 'desktop-after-read-hook
;	  '(lambda ()
;	     ;; desktop-remove clears desktop-dirname
;	     (setq desktop-dirname-tmp desktop-dirname)
;	     (desktop-remove)
;	     (setq desktop-dirname desktop-dirname-tmp)))

;; Saved session
(defun saved-session ()
  (file-exists-p (concat desktop-dirname "/" desktop-base-file-name)))

;; Use session-restore to restore the desktop manually
(defun session-restore ()
  "Restore a saved emacs session."
  (interactive)
  (if (saved-session)
    (desktop-read)
    (message "No desktop found.")))

;; Use session-save to save the desktop manually
(defun session-save ()
  "Save an emacs session."
  (interactive)
  (if (saved-session)
    (if (y-or-n-p "Overwrite existing session? ")
      (desktop-save-in-desktop-dir)
      (message "Session not saved."))
    (desktop-save-in-desktop-dir)))

;; ask user whether to restore desktop at start-up
(add-hook 'after-init-hook
          '(lambda ()
             (if (saved-session)
               (session-restore))))


;; More on session management

(defvar desktop-session-dir
  (concat (getenv "HOME") "/.emacs.d/sessions/")
  "*Directory to save desktop sessions in")

(defvar desktop-session-name-hist nil
  "Desktop session name history")

(defun my-desktop-save (&optional name)
  "Save desktop with a name."
  (interactive)
  (unless name
    (setq name (my-desktop-get-session-name "Save session as: ")))
  (make-directory (concat desktop-session-dir name) t)
  (desktop-save (concat desktop-session-dir name) t))

(defun my-desktop-read (&optional name)
  "Read desktop with a name."
  (interactive)
  (unless name
    (setq name (my-desktop-get-session-name "Load session: ")))
  (desktop-read (concat desktop-session-dir name)))

(defun my-desktop-get-session-name (prompt)
  (completing-read prompt (and (file-exists-p desktop-session-dir)
                               (directory-files desktop-session-dir))
                   nil nil nil desktop-session-name-hist))
