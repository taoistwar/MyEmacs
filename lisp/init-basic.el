(fset 'yes-or-no-p 'y-or-n-p) ;; 使用y/n替换yes/no


;; (load-theme 'wombat t) ;; 设置主题颜色

(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))     ;;菜单栏
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))     ;;工具栏
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) ;;滚动条
(setq initial-frame-alist (quote ((fullscreen . maximized)))) ;;启动全屏



(show-paren-mode t)    ;;显示匹配的括号 
(electric-pair-mode t) ;;自动补全括号
(global-linum-mode t)  ;;侧边显示行号
(column-number-mode t) ;;状态栏显示行列信息
(global-hl-line-mode 1);;当前行高亮

(setq default-tab-width 4) ;;默认Tab宽度
(setq inhibit-splash-screen t) ;;关闭帮助画面


(blink-cursor-mode -1) ;;指针不要闪

(global-auto-revert-mode t);自动reload文件
;;;;;去掉烦人的警告铃声
(setq visible-bell nil)
(setq ring-bell-function 'ignore)
;; 自动存盘
(setq auto-save-mode t)


;;;;;滚动页面时比较舒服，不要整页的滚动
(setq scroll-step 1 scroll-margin 3 scroll-conservatively 10000)
;; 当光标在行尾上下移动的时候，始终保持在行尾。 
(setq track-eol t)

;; 卡顿(windows)
(set-default-font "Courier New-14") ;; 字体
(set-face-attribute 'default nil :font "Courier New-14")
(dolist (charset '(kana han cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font) charset
                    (font-spec :family "微软雅黑" :size 20)))

(provide 'init-basic)
