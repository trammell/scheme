; (Example 1.4)  What is "(car (cons a l))", where "a" is "french", and "l"
; is "(fries)"?

(define a 'french)
(define l '(fries))
(cons a l)
;;; (french fries)
(car (cons a l))
;;; french

; What is "(cdr (cons a l))" where "a" is "oranges", and "l" is "(apples
; and peaches)"?

(define a 'oranges)
(define l '(apples and peaches))
(cons a l)
;;; (oranges apples and peaches)
(cdr (cons a l))
;;; (apples and peaches)

