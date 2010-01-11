(define (assert msg b)
  (if (not b) (error msg)))

(define (asserteq msg a b)
  (assert msg (> 0.0001 (abs (- a b)))))

;(error %load-path)
