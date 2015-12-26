;; (require 'weechat)
;; (defun sjihs-weechat-connect ()
;;   (interactive)
;;   (weechat-connect "localhost" 8001 "chandan" 'plain))
;; (define-key global-map (kbd "C-c w c") 'sjihs-weechat-connect)
;; (define-key global-map (kbd "C-c w d") 'weechat-disconnect)
;; (define-key global-map (kbd "C-c w b") 'weechat-monitor-buffer)

(defun sjihs-weechat-log ()
  (interactive)
  (let ((file-name
         (read-file-name "Enter log name: " (expand-file-name "~/.weechat/logs/")
                         nil nil "irc." nil)))
    (find-file file-name)))
(global-set-key (kbd "C-c s w") 'sjihs-weechat-log)
