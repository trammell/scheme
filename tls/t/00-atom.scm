
(use-modules (test TAP ioca))
(load-from-path "atom_p.scm")

(plan 4)

(diag "this test\nis the best\nof all the rest")
(ok (atom? 'abc))
(is (atom? 'abc) #t)
(isnt (atom? '()) #t)
(isnt (atom? '(foo)) #t)

