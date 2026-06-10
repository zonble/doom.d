(if (eq system-type `windows-nt)
    (progn (custom-set-variables
            ;; custom-set-variables was added by Custom.
            ;; If you edit it by hand, you could mess it up, so be careful.
            ;; Your init file should contain only one such instance.
            ;; If there is more than one, they won't work right.
            '(org-agenda-files '("d:/Google Drive/agenda.org")))
           (custom-set-faces
            ;; custom-set-faces was added by Custom.
            ;; If you edit it by hand, you could mess it up, so be careful.
            ;; Your init file should contain only one such instance.
            ;; If there is more than one, they won't work right.
            )))

(setq-default line-move-visual t)
(setq-default word-wrap t)
(setq-default word-wrap-by-category t)

(defun my/set-fill-width (width)
  (interactive "nWidth: ")
  (setq visual-fill-column-width width))

(defun my/enable-writing-mode ()
  "Enable 80-column soft wrapping for writing."
  (interactive)
  (visual-line-mode 1)
  (visual-fill-column-mode 1)
  (setq-local visual-fill-column-width 80
              visual-fill-column-center-text nil))

(defun my/disable-writing-mode ()
  "Disable visual soft wrapping."
  (interactive)
  (visual-fill-column-mode -1)
  (visual-line-mode -1))
