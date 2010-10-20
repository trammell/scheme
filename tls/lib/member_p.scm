; Little Schemer, p. 22
(define member?
  (lambda (a l)
    (cond ((null? l) #f)
          (else (or (eq? a (car l))
                    (member? a (cdr l)))))))

