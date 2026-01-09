;;; package --- Summary
;;; Code:
;;; Commentary:

(use-package gptel
  :ensure t
  :config
  (setq gptel-api-key (getenv "GEMINI_API_KEY"))
)


;(provide '15_genai)
;;; 15_genai.el ends here
