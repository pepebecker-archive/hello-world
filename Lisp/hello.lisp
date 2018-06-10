(DEFUN HELLO ()
	"HELLO WORLD"
)

(DEFUN TEST ()
       "Another function"
       (HELLO)
)

(write-line (HELLO))

(write-line (TEST))

; this is a comment
