; From The Little Schemer, p. 166:
; What is the value of
;
;     (((lambda (mk-length)
;         (mk-length mk-length))
;       (lambda (mk-length)
;         (lambda (l)
;           (cond ((null? l) 0)
;                 (else (add1 ((mk-length eternity) (cdr l))))))))
;     l)
;
; where "l" is '(apples).  This is a good exercise.  Work it out with paper
; and pencil.

; >>> I haven't worked it out with paper and pencil; is ViM close enough?

; Step 1:
(((lambda (mk-length)
    (mk-length mk-length))
  (lambda (mk-length)
    (lambda (l)
      (cond ((null? l) 0)
            (else (add1 ((mk-length eternity) (cdr l))))))))
 '(apples))


; Step 2:
(define add1 (lambda (x) (+ x 1)))
(define eternity (lambda (x) (eternity x)))

(
   (
      (lambda (mk-length)
        (lambda (l)
          (cond ((null? l) 0)
                (else (add1 ((mk-length eternity) (cdr l)))))))
      (lambda (mk-length)
        (lambda (l)
          (cond ((null? l) 0)
                (else (add1 ((mk-length eternity) (cdr l)))))))
   )
   '(apples))

; Step 3: 
(define add1 (lambda (x) (+ x 1)))
(define eternity (lambda (x) (eternity x)))

(
   (lambda (l)
     (cond ((null? l) 0)
           (else 
             (add1 (((lambda (mk-length)
                       (lambda (l) 
                         (cond ((null? l) 0) 
                               (else (add1 
                                       ((mk-length eternity) (cdr l)))))))
                     eternity) (cdr l))))))
   '(apples))


; Step 4:
(define add1 (lambda (x) (+ x 1)))
(define eternity (lambda (x) (eternity x)))

(cond ((null? '(apples)) 0)
      (else 
        (add1 (((lambda (mk-length)
                  (lambda (l)
                    (cond ((null? l) 0)
                          (else (add1
                                  ((mk-length eternity) (cdr l)))))))
                eternity) '()))))

; Step 5:
(define add1 (lambda (x) (+ x 1)))
(define eternity (lambda (x) (eternity x)))
(add1 (
   (
      (lambda (mk-length)
        (lambda (l)
          (cond ((null? l) 0)
                (else (add1 ((mk-length eternity) (cdr l)))))))
      eternity)
      '()
   ))


; Step 6:
(define add1 (lambda (x) (+ x 1)))
(define eternity (lambda (x) (eternity x)))
(add1
   (
      (lambda (l)
        (cond ((null? l) 0)
              (else (add1 ((eternity eternity) (cdr l))))))
      '()
   )
)


; Step 7
(define add1 (lambda (x) (+ x 1)))
(define eternity (lambda (x) (eternity x)))
(add1
   (cond ((null? '()) 0)
         (else (add1 ((eternity eternity) (cdr '())))))
)

; Step 8
(define add1 (lambda (x) (+ x 1)))
(add1 0)

