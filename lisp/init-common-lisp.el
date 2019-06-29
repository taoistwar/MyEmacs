;; 设置sbcl的执行文件
(setq inferior-lisp-program "d:/dev/sbcl/sbcl.exe")
(require 'slime-autoloads)
(slime-setup)
(slime-setup '(slime-fancy slime-banner))


(provide 'init-common-lisp)
