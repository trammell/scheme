; Little Schemer, Chapter 9, p. 172
; "the applicative-order Y combinator"

(define Y
  (lambda (s)
    ((lambda (f) (f f))
     (lambda (g) (s (lambda (x) ((g g) x)))))))

