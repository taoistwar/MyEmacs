;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "d:/dev/emacs-26.2-x86_64/.emacs.d/init.el"))
;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

(provide 'init-keys)
