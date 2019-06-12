;; 配置slime
(load (expand-file-name "~/quicklisp/slime-helper.el"))

;; 设置sbcl的执行文件
(setq inferior-lisp-program "d:/dev/sbcl/sbcl.exe")

(provide 'init-common-lisp)
