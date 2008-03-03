(use-modules (test TAP ioca))
(load-from-path "seconds.scm")

(plan 3)

(is   (seconds '((a b) (c d) (e f))) '(b d f))
(is   (seconds '((alpha beta)))      '(beta))
(isnt (seconds '((alpha beta)))      '(alpha))

