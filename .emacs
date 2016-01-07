(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(abbrev-mode t t)
 '(auto-fill-mode t)
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
;; '(menu-bar-mode nil)
;; '(scroll-bar-mode nil)
 '(show-paren-mode t)
;; '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(visible-bell t)
 )

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'downcase-region 'disabled nil)
;;------------------------------------------------------------
(global-font-lock-mode t);highlight
(setq inhibit-startup-message t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(global-linum-mode t) ;always show line numbers
(setq line-number-mode t)
(setq default-fill-column 80)
(setq default-major-mode 'text-mode)
(setq show-paren-style 'parentheses)


;; k&r coding style indentation

;; (add-hook 'c-mode-common-hook ( lambda() ( c-set-style "linux" ) ) )
;; (add-hook 'c++-mode-common-hook ( lambda() ( c-set-style "linux" ) ) )

(setq c-default-style "linux"  c-basic-offset 2)
(setq-default c-basic-offset 2
              tab-width 2
              indent-tabs-mode nil)

;; (setq tab-stop-list ())
;; (setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40))
;;(setq c-tab-always-indent t)


(setq x-select-enable-clipboard t);enable global clipboard

;; -------------------------------------------------------------------------
                                        ;鼠标滚轮，默认的滚动太快，这里改为3行
(defun up-slightly () (interactive) (scroll-up 3))
(defun down-slightly () (interactive) (scroll-down 3))
(global-set-key [mouse-4] 'down-slightly)
(global-set-key [mouse-5] 'up-slightly)
;;------------------------------------------------------------
;; keyboard shortcuts setting
(global-set-key [f4] 'flyspell-goto-next-error)
(global-set-key [f5] 'ispell-word)
(global-set-key [f11] 'speedbar)
(global-set-key (kbd "C-c C-f")'find-file-at-point)
(global-set-key (kbd "C-c m") 'set-mark-command)
(global-set-key "\r" 'newline-and-indent)
(global-set-key [f8] 'compile)
(setq-default compile-command "make")
(global-set-key [f9] 'gdb)
(global-set-key [(meta g)] 'goto-line)
(global-set-key (kbd "C-c =") 'hs-toggle-hiding)
(global-set-key (kbd "C--") 'text-scale-decrease)
(define-key global-map "\C-x\C-u" 'undo)
(setq gdb-use-separate-io-buffer 1)

(setq kill-ring-max 200)
(fset 'yes-or-no-p 'y-or-n-p)
(add-hook 'c-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook 'hs-minor-mode)
(add-hook 'perl-mode-hook 'hs-minor-mode)
;;(add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'html-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'javascript-mode-hook 'hs-minor-mode)

(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme-6.6.0")
(load-theme 'molokai t)
(setq molokai-theme-kit t)
;;(color-theme-classic)
(setq default-frame-alist '((top . 30) (left . 300) ))
(set-default-font " -apple-Menlo-medium-normal-normal-*-16-*-*-*-m-0-iso10646-1")
(add-to-list 'load-path "~/.emacs.d/site-lisp/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/ac-dict")
(ac-config-default)
(require 'gyp)
