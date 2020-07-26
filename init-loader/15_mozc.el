;;; package --- Summary
;;; Code:
;;; Commentary:
(use-package mozc
  :ensure t
  :if (executable-find "mozc_emacs_helper")
  :hook
  ((after-init . turn-off-ime)
   (input-method-activate . set-cursor-color-to-ime-on)
   (input-method-inactivate . set-cursor-color-to-ime-off)
   ((minibuffer-setup helm-minibuffer-set-up) . turn-off-ime))
  :custom
  (default-input-method "japanese-mozc")
  (mozc-candidate-style 'echo-area)
  (mozc-leim-title "も")
  :config
  (defun set-cursor-color-to-ime-on ()
    (set-cursor-color "magenta"))
  (defun set-cursor-color-to-ime-off ()
    (set-cursor-color "Cyan"))
  (defun turn-on-ime ()
    (interactive)
    (activate-input-method default-input-method))
  (defun turn-off-ime ()
    (interactive)
    (deactivate-input-method))
  (use-package switch-buffer-functions
    :config
    (add-hook 'switch-buffer-functions
              (lambda(prev cur)
                (if (eval 'current-input-method)
                    (set-cursor-color-to-ime-on)
                  (set-cursor-color-to-ime-off)))))
  (when (eq system-type 'darwin)
    (defun my/eisuu-key ()
      "Turn off mac IME."
      (interactive)
      (call-process
       "osascript" nil t nil "-e"
       "tell application \"System Events\" to key code 102"))
    (add-hook 'focus-in-hook 'my/eisuu-key)))

(use-package mozc-popup
  :ensure t
  :config
  (setq mozc-candidate-style 'popup))

;(provide '15_mozc)
;;; 15_mozc.el ends here
