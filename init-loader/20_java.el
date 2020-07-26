;;; package --- Summary
;;; Code:
;;; Commentary:
(require 'cc-mode)

(use-package java-mode
  :mode(("¥¥.java¥¥" . java-mode))
  :config
       (setq c-default-style "k&r")
	   (setq c-comment-only-line-offset 0)
	   (setq c-basic-offset 4 indent-tabs-mode t)
	   (c-set-offset 'case-label '+)
  :bind(("M-." . helm-gtags-find-tag)
		([f9] . helm-gtags-find-rtag)
		([f10] . helm-gtags-find-symbol)
		("M-*" . helm-gtags-pop-stack))
  )

(provide '20_java)
;;; 20_java.el ends here

