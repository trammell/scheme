
(define pick
  (lambda (n lat)
    (cond ((= n 1) (car lat))
          (else (pick (- n 1) (cdr lat))))))

