; (Exercise 1.8) True or false;
;
;     (atom? (car l))               ; where l is ((meatballs) and spaghetti)
;     (null? (cdr l))               ; where l is ((meatballs))
;     (eq? (car l) (car (cdr l)))   ; where l is (two meatballs)
;     (atom? (cons a l))            ; where l is (ball) and a is 'meat

;; Little Schemer, p. xii
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define l '((meatballs) and spaghetti))
(car l)
; (meatballs)
(atom? car l)
; #f

(define l '((meatballs)))
(cdr l)
;;; ()
(null? (cdr l))
;;; #t

(define l '(two meatballs))
(car l)
;;; two
(cdr l)
;;; (meatballs)
(car (cdr l))
;;; meatballs
(eq? (car l) (car (cdr l)))
;;; #f

(define a 'meat)
(define l '(ball))
(cons a l)
;;; (meat ball)
(atom? (cons a l))
;;; #f

