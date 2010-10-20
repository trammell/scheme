(use-modules (test TAP ioca))
;;(load-from-path "zero.scm")

(plan 2)
(is (zero? 0) #t)
(is (zero? 1) #f)

