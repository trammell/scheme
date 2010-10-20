; (Exercise 1.9) What is:
;
;     (car (cdr (cdr (car l))))
;           where l is '((kiwis mangoes lemons) and (more))
;
;     (car (cdr (car (cdr l))))
;           where l is '(() (eggs and (bacon)) (for) (breakfast))
;
;     (car (cdr (cdr (cdr l))))
;           where l is '(() () () (and (coffee)) please)
;

(define l '((kiwis mangoes lemons) and (more)))
(car l)
;;; (kiwis mangoes lemons)
(cdr (car l))
;;; (mangoes lemons)
(cdr (cdr (car l)))
;;; (lemons)
(car (cdr (cdr (car l))))
;;; lemons


(define l '(() (eggs and (bacon)) (for) (breakfast)))
(cdr l)
;;; ((eggs and (bacon)) (for) (breakfast))
(car (cdr l))
;;; (eggs and (bacon))
(cdr (car (cdr l)))
;;; (and (bacon))
(car (cdr (car (cdr l))))
;;; and


(define l '(() () () (and (coffee)) please))
(cdr l)
;;; (() () (and (coffee)) please)
(cdr (cdr l))
;;; (() (and (coffee)) please)
(cdr (cdr (cdr l)))
;;; ((and (coffee)) please)
(car (cdr (cdr (cdr l))))
;;; (and (coffee))

