(use-modules (test TAP ioca))
(load-from-path "sub1.scm")

(plan 1)
(is (sub1 5) 4)

