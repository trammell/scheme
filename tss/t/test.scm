(define assert
  (lambda (msg test)
    (if (not test) (error msg))))

;(define (assert-eq msg a b)
;  (assert msg (> 0.0001 (abs (- a b)))))

(define assert-equal
  (lambda (msg a b)
    (assert msg (equal? a b))))

(set! %load-path (cons "../lib" %load-path))
(set! %load-path (cons "./lib"  %load-path))

; (display %load-path)(newline)

