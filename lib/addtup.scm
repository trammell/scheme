
;; load o+
(load-from-path "op.scm")

;; Little Schemer, Chapter 4, p. 64
(define addtup
  (lambda (tup)
    (cond ((null? tup) 0)
          (else (o+ (car tup) (addtup (cdr tup)))))))
