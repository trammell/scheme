(load-from-path "test-tap.scm")

(plan 2)

; (Example 1.4)  What is "(car (cons a l))", where "a" is "french", and "l"
; is "(fries)"?

(define a 'french)
(define l '(fries))
(is (car (cons a l)) 'french)

; What is "(cdr (cons a l))" where "a" is "oranges", and "l" is "(apples
; and peaches)"?

(define a 'oranges)
(define l '(apples and peaches))
(is (cdr (cons a l)) '(apples and peaches))

