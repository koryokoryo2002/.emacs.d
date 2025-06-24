;;; package --- Summary
;;; Code:
;;; Commentary:

(use-package corfu
  ;; オプションのカスタマイズ
  ;; :custom
  ;; (corfu-cycle t)                ;; `corfu-next/previous'による巡回を有効にする
  ;; (corfu-quit-at-boundary nil)   ;; 補完境界で終了しない
  ;; (corfu-quit-no-match nil)      ;; マッチがなくても終了しない
  ;; (corfu-preview-current nil)    ;; 候補のプレビューを無効にする
  ;; (corfu-preselect 'prompt)      ;; プロンプトでの事前選択
  ;; (corfu-on-exact-match nil)     ;; 正確なマッチの取り扱い設定
  
  ;; 特定モードでのみCorfuを有効化(`global-corfu-modes'も参照されたい)
  ;; :hook ((prog-mode . corfu-mode)
  ;;        (shell-mode . corfu-mode)
  ;;        (eshell-mode . corfu-mode))
  
  ;; お勧め: Corfuをグローバルに有効化
  ;; Dabbrevがグローバルに使用可になるのでお勧め
  ;; 特定モードの除外はカスタマイズ変数`global-corfu-modes'を参照のこと
  :init
  (global-corfu-mode))

;; 更に便利なコンフィグをいくつか...
(use-package emacs
  :custom
  ;; 候補が少なければTABで巡回
  ;; (completion-cycle-threshold 3)
  
  ;; インデントと補完の両方にTABキーを使える機能を有効化
  ;; `completion-at-point'はM-TABにバインドされていることが多い
  (tab-always-indent 'complete)
  
  ;; Emacs 30以降: Ispellの補完関数を無効化
  ;; かわりに`cape-dict'を試してみて欲しい
  (text-mode-ispell-word-completion nil)
  
  ;; カレントモードには適用されないコマンドはM-xで表示しない
  ;; CorfuコマンドはM-x経由で使用されることはないので非表示になる
  ;; これはCorfuに限らず役に立つセッティングだろう
  (read-extended-command-predicate #'command-completion-default-include-p))

;(provide '15_corfu)
;;; 15_corfu.el ends here
