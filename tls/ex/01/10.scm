; (Exercise 1.10) To get the atom 'and in '(peanut butter and jelly on
; toast) we can write "(car (cdr (cdr l)))".  What would you write to get
; "Harry" in "l", where "l" is:
;
;     (apples in (Harry has a backyard))
;     (apples and Harry)
;     (((apples) and ((Harry))) in his backyard)

(define l '(apples in (Harry has a backyard)))
(cdr l)
;;; (in (Harry has a backyard))
(cdr (cdr l))
;;; ((Harry has a backyard))
(car (cdr (cdr l)))
;;; (Harry has a backyard)
(car (car (cdr (cdr l))))
;;; Harry


(define l '(apples and Harry))
(cdr l)
;;; (and Harry)
(cdr (cdr l))
;;; (Harry)
(car (cdr (cdr l)))
;;; Harry


(define l '(((apples) and ((Harry))) in his backyard))
(car l)
;;; ((apples) and ((Harry)))
(cdr (car l))
;;; (and ((Harry)))
(cdr (cdr (car l)))
;;; (((Harry)))
(car (cdr (cdr (car l))))
;;; ((Harry))
(car (car (cdr (cdr (car l)))))
;;; (Harry)
(car (car (car (cdr (cdr (car l))))))
;;; Harry

