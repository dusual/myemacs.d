(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(js-indent-level 2))

(load-file "~/.emacs.d/emacs-for-python/epy-init.el")
(load-file "~/.emacs.d/emacs-for-python/flymake-cursor.el")
(setq javascript-indent-level 2)
(setq-default indent-tabs-mode nil)
(load-file "~/.emacs.d/whitespace.el")
(load-file "~/.emacs.d/tabbar.el")

;;(load-file "~/.emacs.d/ac-js2.el")

;;(add-to-list 'load-path "~/.emacs.d/vendor/mustache-mode.el")
;;(require 'mustache-mode)



(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(put 'downcase-region 'disabled nil)

;; (when (load "flymake" t)
;;   (defun flymake-jslint-init ()
;;     (let* ((temp-file (flymake-init-create-temp-buffer-copy
;; 		              'flymake-create-temp-inplace))
;;            (local-file (file-relative-name
;;                         temp-file
;;                         (file-name-directory buffer-file-name))))
;;       (list "jslint" (list "--terse" local-file))))

;;   (setq flymake-err-line-patterns
;; 	(cons '("^\\(.*\\)(\\([[:digit:]]+\\)):\\(.*\\)$"
;; 		1 2 nil 3)
;; 	            flymake-err-line-patterns))

;;   (add-to-list 'flymake-allowed-file-name-masks
;;                '("\\.js\\'" flymake-jslint-init))

;;   (require 'flymake-cursor)
;; )

;; (add-hook 'js-mode-hook
;; 	    (lambda ()
;;       (flymake-mode 1)
;;       (define-key js-mode-map "\C-c\C-n" 'flymake-goto-next-error)))

;;(add-hook 'js-mode-hook 'ac-js2-mode)

(eval-after-load 'flymake '(require 'flymake-cursor))
(put 'upcase-region 'disabled nil)

(add-to-list 'auto-mode-alist '("\\.mustache\\'" . html-mode))
(add-to-list 'auto-mode-alist '("\\.t_html\\'" . html-mode))

(require 'whitespace)
(setq whitespace-style '(tabs tab-mark)) ;turns on white space mode only for tabs
(global-whitespace-mode 1)

(require 'tabbar)
(tabbar-mode)
(setq tabbar-buffer-groups-function
      (lambda ()
        (list "All Buffers")))