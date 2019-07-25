;; 使用ELPA镜像
;; http://elpa.emacs-china.org/

(require 'package)

(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))

;; 强行提前初始化ELPA。因为默认情况下Emacs在init.el加载完之后才开始初始化ELPA，
;; 而我们把大多数包的初始化函数都放在init.el中，如果不提前初始化ELPA会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。
(package-initialize)

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
                      ;; --- Auto-completion ---
                      company
                      ;; --- Better Editor ---
                      slime
                      ;; --- Major Mode ---
                      
                      ;; --- Minor Mode ---
		      wakatime-mode
		      
                      
                      ;; --- Themes ---
                      helm
		      smex
		      helm-smex


		      use-package

		      swiper
		      popup
		      pkg-info

		      org-bullets
		      yasnippet
		      
                      ;; solarized-theme
		      color-theme-solarized
                      ) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
  (loop for pkg in my/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (my/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg my/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(provide 'init-elpa)
