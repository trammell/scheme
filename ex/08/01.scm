(load "../lib/test-tap.scm")
(plan 3)

(load "rember-f.scm")

(is
  (rember-f = 5 '(6 2 5 3))
  '(6 2 3))

