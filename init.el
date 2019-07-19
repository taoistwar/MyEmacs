;; Produce backtraces when errors occur
(setq debug-on-error t)

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-basic)
(require 'init-common-lisp)
(require 'init-company)
(require 'init-org)
(require 'init-smex)
(require 'init-helm)
