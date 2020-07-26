;;; package --- Summary
;;; Code:
;;; Commentary:

(use-package magit
  :ensure t
  :bind (("C-x g" . magit-status)
         ("C-x M-g" . magit-dispatch-popup))
  :init
  :config
  )

;(provide '15_magit)
;;; 15_magit.el ends here
