#||
Multiline Comment
;;;; Description
;;; Comment
;; Indented Comment
; After Code Comment
||#

(print "What's your name?")

(defvar *name* (read))

(defun hello-you (n)
	(format t "Hello ~a! ~%" n)
)

(setq *print-case* :capitalize)

(hello-you *name*)

(+ 5 4)
(+ 5 (- 6 4))

(setvar *number* 0)
(setf *number* 6)
