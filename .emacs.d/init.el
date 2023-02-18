(menu-bar-mode 1)
(scroll-bar-mode -1)

(global-display-line-numbers-mode 1)

(defmacro comment (&rest body) nil)

;; (setenv "PYTHONPATH"
;; 	(concat "/Users/ajmal/Documents/Bitbucket/mip-api/.venv/lib/python3.8/site-packages"
;; 		":"
;; 		"/Users/ajmal/Documents/Bitbucket/mip-api")
;;	)
;; (setenv "PATH" (concat (getenv "PATH") ":/Users/ajmal/Documents/Bitbucket/mip-api"))


;; https://nicolasshu.com/python_on_emacs.html -> Python Interactive Mode with Jupyter

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(docker dockerfile-mode auto-complete ejc-sql clojure-mode-extra-font-locking cider jenkinsfile-mode groovy-mode treemacs-tab-bar centaur-tabs evil-escape goto-last-change evil ein jupyter use-package yaml-mode dap-mode lsp-ivy helm-lsp company lsp-treemacs flycheck lsp-ui lsp-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(evil-mode 1)
(ido-mode 1)
(evil-escape-mode 1)

;; (use-package poetry :ensure t)

;; (add-hook 'python-mode-hook #'lsp)
(add-hook 'prog-mode-hook #'lsp)
;; (add-hook 'emacs-startup-hook 'treemacs)

(set-face-attribute 'default nil :height 175)
(set-frame-font "Fira Code" nil t)

(global-set-key [s-mouse-1] 'lsp-find-definition) 
(global-set-key (kbd "s-w") 'kill-this-buffer)
(global-set-key (kbd "M-o") 'ace-window)
(global-set-key [remap evil-quit] 'kill-this-buffer)

(global-set-key (kbd "s-{") 'switch-to-prev-buffer)
(global-set-key (kbd "s-}") 'switch-to-next-buffer)

(global-set-key (kbd "s-;") 'comment-or-uncomment-region)

(setq aw-dispatch-always t)

(setq company-minimum-prefix-length 1)

;; (setq evil-default-state 'emacs

(use-package eaf
  :load-path "~/.emacs.d/site-lisp/emacs-application-framework"
  )

(require 'eaf-browser)
