; (Exercise 2.7) Consider the following new definition of member?


(define member2
  (lambda (a lat)
    (cond ((null? lat) #f)
          (else (or
                  (member2? a (cdr lat))
                  (eq? a (car lat)))))))

; Do (member2? a l) and (member? a l) give the same answer when we use the
; same arguments?  Consider the examples a1 and l1, a1 and l2, and a2 and
; l2.
