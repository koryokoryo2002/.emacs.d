;;; package --- Summary
;;; Code:
;;; Commentary:

;(global-set-key (kbd "M-o") 'helm-swoop)
;(global-set-key [f8] 'helm-imenu)

(use-package helm
  :bind (("M-x" . helm-M-x)
         ;("C-x b" . helm-mini)
         ("C-x C-f" . helm-find-files)
         ;("C-c y"   . helm-show-kill-ring)
         ;("C-c m"   . helm-man-woman)
;         ("C-f"   . helm-occur)
         :map helm-map
         ("C-h" . delete-backward-char)
         :map helm-find-files-map
         ("C-h" . delete-backward-char))
  :init
  (custom-set-faces
   '(helm-header           ((t (:background "#3a3a3a" :underline nil))))
   '(helm-source-header    ((t (:background "gray16" :foreground "gray64" :slant italic))))
   '(helm-candidate-number ((t (:foreground "#00afff"))))
   '(helm-selection        ((t (:background "#005f87" :weight normal))))
   '(helm-match            ((t (:foreground "darkolivegreen3")))))
  :config
  (helm-mode 1))


(use-package helm-ag
  :bind (("C-f"   . helm-ag))
 )

(add-to-list 'helm-completing-read-handlers-alist '(dired . nil))

;(provide '15_grep)
;;; 15_grep.el ends here
