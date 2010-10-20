; (Exercise 2.1) What are the values of (lat? l1), (lat? l2), and
;     (lat? l3)?

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

;; Little Schemer, p. 16
(define lat?
  (lambda (l)
    (cond ((null? l) #t)
          ((atom? (car l)) (lat? (cdr l)))
          (else #f))))

(lat? l1)
;;; #t

(lat? l2)
;;; #t

(lat? l3)
;;; #t

