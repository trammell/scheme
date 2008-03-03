; (Exercise 1.7) Determine the value of
; 
;     (cons s l)     ; where s is x and l is y
;     (cons s l)     ; where s is () and l is ()
;     (car s)        ; where s is ()
;     (cdr l)        ; where l is (())

(define s 'x)
(define l 'y)
(cons s l)
;;; (x . y)

(define s '())
(define l '())
(cons s l)
;;; (())

(define s '())
(car s)
;;; Backtrace:
;;; In current input:
;;;   41: 0* [car {()}]
;;; 
;;; <unnamed port>:41:1: In procedure car in expression (car s):
;;; <unnamed port>:41:1: Wrong type (expecting pair): ()
;;; ABORT: (wrong-type-arg)

(define l '(()))
(cdr l)
;;; ()

;;; REMEMBER:
;;;   (car (cons a b)) == a
;;;   (cdr (cons a b)) == b

