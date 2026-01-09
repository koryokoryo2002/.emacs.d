;;; package --- Summary
;;; Code:
;;; Commentary:

(setq initial-frame-alist
      (append
       '((top . 2)    ; フレームの Y 位置(ピクセル数)
		 (left . 50)    ; フレームの X 位置(ピクセル数)
		 (width . 106)    ; フレーム幅(文字数)
		 (height . 70)   ; フレーム高(文字数)
		 ) initial-frame-alist))

(tool-bar-mode 0)
(blink-cursor-mode nil)
(display-time-mode t)
(column-number-mode t)
(show-paren-mode t)
(scroll-bar-mode -1)
(setq resize-mini-windows nil)
(setq cursor-in-non-selected-windows nil)

(setq frame-title-format "%b (%f)")

(setq-default tab-width 4)


(defface hlline-face
  '((((class color)
      (background dark))
     (:background "gray0"))
    (((class color)
      (background light))
     (:background "DarkSeaGreen1" :))
    (t
     ()))
  "Used face hl-line.")
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)


(provide '30_display)
;;; 30_display.el ends here
