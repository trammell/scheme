
; Little-Schemer, p. 43
(define firsts
  (lambda (l)
    (cond ((null? l) '())
          (else (cons (car (car l)) (firsts (cdr l)))))))
          
          
          
          

