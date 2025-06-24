;;; package --- Summary
;;; Code:
;;; Commentary:

;;pip install python-lsp-server
;;pip install python-lsp-ruff

(use-package python-mode
  :init
  (add-hook 'python-mode-hook #'eglot-ensure)
  :mode
  ("¥¥.py¥¥" . python-mode)
  )

;; (use-package elpy
;;   :init
;;   (advice-add 'python-mode :before 'elpy-enable)
;;   :config
;;   (pyvenv-activate "~/work/python/venv3")
;;   )

;; (use-package ein
;;   :ensure t
;;   :commands (ein:notebooklist-open))

(provide '20_python)
;;; 20_python.el ends here

