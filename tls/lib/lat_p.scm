(load-from-path "atom_p.scm")

; Little Schemer, p. 16
(define lat?
  (lambda (l)
    (cond ((null? l) #t)
          ((atom? (car l)) (lat? (cdr l)))
          (else #f))))

