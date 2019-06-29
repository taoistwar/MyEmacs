(require 'org)
(setq org-src-fontify-natively t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; 打开org-indent mode, 缩进模式，当打开后，每个Headline只显示一个星星符号，同时会按照所属层级进行适当地 缩进. 
(setq org-startup-indented t)

;; 设置bullet list, 自定义每个层级显示的符号
(setq org-bullets-bullet-list '("☰" "☷" "☯" "☭"))

;; 设置todo keywords 任务状态的标识文字
(setq org-todo-keywords
      '((sequence "TODO" "HAND" "|" "DONE")))

;; 设置todo keywords 背景色
(setf org-todo-keyword-faces '(("TODO" . (:foreground "white" :background "#95A5A6" :weight bold))
			       ("HAND" . (:foreground "white" :background "#2E8B57" :weight bold))
			       ("DONE" . (:foreground "white" :background "#3498DB" :weight bold))))

(provide 'init-org)
