
(define sum-of-prefixes-b
  (lambda (total tup)
    (cond ((null? tup) '())
          (else (cons
                  (+ total (car tup))
                  (sum-of-prefixes-b
                    (+ total (car tup)) (cdr tup)))))))

(define sum-of-prefixes
  (lambda (tup)
    (sum-of-prefixes-b 0 tup)))

