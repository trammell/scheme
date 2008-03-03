; (Exercise 1.5) Find an atom "x" that makes "(eq? x y)" true, where "y" is
; "lisp".  Are there any others?

(define y (quote lisp))

(eq? 'cat y)
; #f

(eq? 'dog y)
; #f

(eq? 'lisp y)
; #t

(eq? '() y)
; #f

(eq? #f y)
; #f

(eq? #t y)
; #f

(eq? 0 y)
; #f

(eq? 1 y)
; #f

