; Little-Schemer, Chapter 3, p. 45
(define seconds
  (lambda (l)
    (cond ((null? l) '())
          (else (cons (car (cdr (car l))) (seconds (cdr l)))))))
          
          
          
          

