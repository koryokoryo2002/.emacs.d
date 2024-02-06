;;; package --- Summary
;;; Code:
;;; Commentary:

(use-package cc-mode
  :mode(("¥¥.c¥¥" . cc-mode)("¥¥.h¥¥" . cc-mode)
		("¥¥.cpp¥¥" . cc-mode)("¥¥.cc¥¥" . cc-mode))
  :config
		  (setq c-default-style "k&r")
		  (setq c-comment-only-line-offset 0)
		  (setq c-basic-offset 4 indent-tabs-mode t)
		  (c-set-offset 'case-label '+)
  :bind(([f12] . ff-find-other-file)
		("M-." . helm-gtags-find-tag)
		([f9] . helm-gtags-find-rtag)
		([f10] . helm-gtags-find-symbol)
		("M-*" . helm-gtags-pop-stack))
  )


(provide '20_cpp)
;;; 20_cpp.el ends here

