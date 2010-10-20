(use-modules (test TAP ioca))
(load-from-path "add1.scm")

(plan 1)
(is (add1 67) 68)
