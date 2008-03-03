; (Exercise 2.3) What is the value of (member? a1 l1), and (member? a2 l2)?
; Step through the application for each case.

(define l1 '(german chocolate cake))
(define l2 '(poppy seed cake))
(define l3 '())
(define l4 '())
(define l5 '())

(define a1 'coffee)
(define a2 'seed)
(define a3 'poppy)

;; Little Schemer, p. xii
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

;; Little Schemer, p. 22
(define member?
  (lambda (a l)
    (cond ((null? l) #f)
          (else (or (eq? a (car l))
                    (member? a (cdr l)))))))


(member? a1 l1)
;;; #f

(member? a2 l2)
;;; #t

