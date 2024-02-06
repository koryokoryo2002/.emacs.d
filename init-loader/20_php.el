;;; package --- Summary
;;; Code:
;;; Commentary:

(use-package php-mode
  :hook ((php-mode . my-php-mode-setup))
  :custom
  (php-manual-url 'ja)
  (php-mode-coding-style 'psr2)
  (php-mode-template-compatibility nil)
  :config
;;  (bind-key "[" (smartchr "[]" "array()" "[[]]") php-mode-map)
;;  (bind-key "]" (smartchr "array " "]" "]]")     php-mode-map)
  ;; (bind-key "C-}" 'cedit-barf php-mode-map)
  ;; (bind-key "C-)" 'cedit-slurp php-mode-map)
;;  (bind-key "C-c C-c" 'psysh-eval-region         php-mode-map)
;;  (bind-key "<f6>" 'phpunit-current-project      php-mode-map)
;;  (bind-key "C-c C--" 'php-current-class php-mode-map)
  ;;  (bind-key "C-c C-=" 'php-current-namespace php-mode-map)
  )

(provide '20_php)
;;; 20_php.el ends here

