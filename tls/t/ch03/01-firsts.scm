(use-modules (test TAP ioca))
(load-from-path "firsts.scm")

(plan 3)

(is (firsts '((a b) (c d) (e f))) '(a c e))

(is (firsts '((alpha beta))) '(alpha))

(isnt (firsts '((alpha beta))) '(beta))

