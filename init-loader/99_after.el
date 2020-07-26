;;; package --- Summary
;;; Code:
;;; Commentary:

(setq kill-whole-line t)
(setq next-line-add-newlines nil)

;バックアップファイルの場所
(setq make-backup-files t)
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))
(put 'narrow-to-region 'disabled nil)
(custom-set-variables
 '(custom-safe-themes (quote ("86f4407f65d848ccdbbbf7384de75ba320d26ccecd719d50239f2c36bec18628" default))))
(custom-set-faces
 )

(prefer-coding-system 'utf-8)
(setq default-process-coding-system 'utf-8)

(setq ring-bell-function 'ignore)

(provide '99_after)
;;; 99_after.el ends here
