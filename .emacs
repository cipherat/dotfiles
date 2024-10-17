(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7" "54dc036a8d64c4c13da44ead6019889c1101eb5546713781c48d1ff07a304124" "a3284bde4f58926325549d7fe785a7fc7b969a5bd90901daa1b9e7be00d35956" "ba4ab079778624e2eadbdc5d9345e6ada531dc3febeb24d257e6d31d5ed02577" default))
 '(package-selected-packages
   '(rjsx-mode php-mode org-modern racer flycheck-rust rust-mode move-text gruber-darker-theme smex)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(require 'ido)
(ido-mode t)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;;; multiple cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c C-S") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;; move text
(require 'move-text)
(global-set-key (kbd "M-p") 'move-text-up)
(global-set-key (kbd "M-n") 'move-text-down)

;;; font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;;; smex
(global-set-key (kbd "M-x") 'smex)

(setq inhibit-startup-screen t)
(set-frame-font "Iosevka Fixed Medium 13" nil t)

(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

;;; moving in windows
(global-set-key (kbd "C-.") #'other-window)
(global-set-key (kbd "C-,") #'prev-window)

(defun prev-window ()
  (interactive)
  (other-window -1))

;;; general
(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(setq default-directory "/")
(setq backup-directory-alist `(("." . "~/.emacs.saves")))
