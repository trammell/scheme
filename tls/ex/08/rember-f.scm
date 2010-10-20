
;; see Little Schemer, p. 126

(define rember-f 
  (lambda (test? a lat) 
    (cond 
      ((null? lat) '()) 
      ((test? a (car lat)) (cdr lat)) 
      (else
        (cons (car lat)
              (rember-f test? a (cdr lat)))))))

