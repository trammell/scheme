(use-modules (test TAP ioca))

(plan 2)

(is (car '(a b c)) 'a)
(is (car '((a b c) x y z)) '(a b c))

