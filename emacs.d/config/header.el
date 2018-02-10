;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                                   HEADER
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmacro with-face (str &rest properties)
    `(propertize, str 'face (list, @properties)))

  (defun make-header ()
    ""
    (let* ((full-header (abbreviate-file-name buffer-file-name))
           (header (file-name-directory full-header))
           (drop-str "[...]"))
      (if (> (length full-header)
             (window-body-width))
          (if (> (length header)
                 (window-body-width))
              (progn
                (concat (with-face drop-str
                                   :background "blue"
                                   :weight 'bold
                                   )
                        (with-face (substring header
                                              (+ (- (length header)
                                                    (window-body-width))
                                                 (length drop-str))
                                              (length header))
                                   ;; :background "red"
                                   :weight 'bold
                                   )))
            (concat (with-face header
                               ;; :background "red"
                               :foreground "#8fb28f"
                               :weight 'bold
                               )))
        (concat (with-face header
                           ;; :background "green"
                           ;; :foreground "black"
                           :weight 'bold
                           :foreground "#8FB28F"
                           )
                (with-face (file-name-nondirectory buffer-file-name)
                           :weight 'bold
                           ;; :background "red"
                           )))))

  (defun display-header ()
    (setq header-var t)
    (setq header-line-format
          '("" ;; invocation-name
            (:eval (if (buffer-file-name)
                       (make-header)
                     "%b")))))



  (add-hook 'buffer-list-update-hook
            'display-header)

