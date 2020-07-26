;;; package --- Summary
;;; Code:
;;; Commentary:

(global-set-key (kbd "M-o") 'helm-swoop)
(global-set-key (kbd "C-f") 'moccur-grep-find)
(global-set-key [f8] 'helm-imenu)

(global-set-key (kbd "C-w") 'kill-ring-save)
(global-set-key (kbd "M-w") 'kill-region)
(global-set-key (kbd "C-v") 'yank)

(global-set-key (kbd "C-z") 'other-window)
(global-set-key (kbd "C-x C-b") 'ibuffer)

(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "M-r") 'replace-string)
(global-set-key (kbd "M-s") 'shell)

(fset 'c-tab
	  [?\C-q tab])
(global-set-key [f4] 'c-tab)

(global-set-key [f1] 'start-kbd-macro)
(global-set-key [f2] 'end-kbd-macro)
(global-set-key [f3] 'call-last-kbd-macro)


;;bm
(global-set-key (kbd "M-SPC") 'bm-toggle)
(global-set-key (kbd "M-;") 'bm-previous)
(global-set-key (kbd "M-:") 'bm-next)

(global-set-key (kbd "M-SPC") 'bm-toggle)
(global-set-key (kbd "M-[") 'bm-previous)
(global-set-key (kbd "M-]") 'bm-next)



(global-set-key (kbd "C-t") 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

(global-set-key [up] 'previous-window-line)
(global-set-key [down] 'next-window-line)
(defun previous-window-line (n)
  (interactive "p")
  (let ((cur-col
         (- (current-column)
            (save-excursion (vertical-motion 0) (current-column)))))
    (vertical-motion (- n))
    (move-to-column (+ (current-column) cur-col)))
  (run-hooks 'auto-line-hook)
  )
(defun next-window-line (n)
  (interactive "p")
  (let ((cur-col
         (- (current-column)
            (save-excursion (vertical-motion 0) (current-column)))))
    (vertical-motion n)
    (move-to-column (+ (current-column) cur-col)))
  (run-hooks 'auto-line-hook)
  )

(provide '31_key)
;;; 31_key.el ends here
