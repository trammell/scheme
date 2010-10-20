
(define foo (lambda () (display "foo") (newline)))

(add-hook! exit-hook foo)

(run-hook exit-hook)

