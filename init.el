;; init.el

;; ======================================================================
;; setting for pacakge.el
;; ======================================================================

;; add loading package.el sites
(require 'package)

;; add some melpa, marmalade, elpy
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives '("elpy" . "http://jorgenschaefer.github.io/packages/") t)

(package-initialize)


;; ======================================================================
;; load-path settings
;; ======================================================================

;; add load-path to  "~/.emacs.d/elpa "
(add-to-list 'load-path "~/.emacs.d/elpa/")


;; ======================================================================
;; basic settings
;; ======================================================================

;; スクリーンの最大化
(set-frame-parameter nil 'fullscreen 'maximized)


;; ======================================================================
;; backup and autosave settings
;; ======================================================================

;; バックアップファイルを作成する
(setq make-backup-files t)

;; オートセーブファイルを作成する
(setq auto-save-default t)

;; バックアップとオートセーブファイルを
;; ~/.emacs.d/backup/ へ集める
(add-to-list 'backup-directory-alist
             (cons "." "~/.emacs.d/backups/"))
(setq auto-save-file-name-transformsp
      `((".*" ,(expand-file-name "~/.emacs.d/backups/") t)))


;; ======================================================================
;; setting for helm.el
;; ======================================================================

;; (require 'helm-config)
;; (helm-mode 1)

;; "M-x"でhelmを利用する
;; (global-set-key (kbd "M-x") 'helm-M-x)

;; "C-x C-f"でhelm find filesを利用する
;; (global-set-key (kbd "C-x C-f") 'helm-find-files)

;; helm内でのTABの操作をターミナルっぽくする
;; (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
;; (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)


;; ======================================================================
;; Programing settings
;; ======================================================================

;; 閉じ括弧を自動で補完する
(electric-pair-mode 1)


;; ======================================================================
;; change some keybindings
;; ======================================================================

;; C-z = undo
(global-set-key (kbd "C-z") 'undo)

;; C-h = back space
(global-set-key (kbd "C-h") 'delete-backward-char)

;; Ctrl-x p = move to the previous window
(global-set-key (kbd "C-x p") (lambda () (interactive) (other-window -1)))
