;;; package --- Summary
;;; Code:
;;; Commentary:

;;pip install python-lsp-server
;;pip install python-lsp-ruff

(use-package python-mode
  :init
  (electric-pair-mode 1)  
  :mode
  ("¥¥.py¥¥" . python-mode)
  :hook
  (python-mode-hook .
          (lambda ()
            (define-key python-mode-map "\"" 'electric-pair)
            (define-key python-mode-map "(" 'electric-pair)
            (define-key python-mode-map "[" 'electric-pair)
            (define-key python-mode-map "{" 'electric-pair)))
  )

(use-package lsp-pyright
  :ensure t
  :custom (lsp-pyright-langserver-command "pyright") ;; or basedpyright
  :hook (python-mode . (lambda ()
                          (require 'lsp-pyright)
                          (lsp))))  ; or lsp-deferred
;; (use-package elpy
;;   :init
;;   (advice-add 'python-mode :before 'elpy-enable)
;;   :config
;;   (pyvenv-activate "~/work/python/venv3")
;;   )

(use-package ein
  :ensure t
  :commands (ein:notebooklist-open)
  )


(provide '20_python)
;;; 20_python.el ends here

