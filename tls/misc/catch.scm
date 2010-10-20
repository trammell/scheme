
(define index 0)
(define has-plan #f)

(define (cleanup)
  (simple-format #t "has-plan: ~a~%" has-plan)
  (simple-format #t "1..~a~%" index))

(catch 'quit
       (lambda ()
         (begin ((format #t "in thunk~%")
                 (exit 1))))
       (lambda (key .  args)
         (begin (format #t "in handler~%")
                (format #t "key=~a args=~a~%" key args)
                (cleanup))))

(set! has-plan #t)
(format #t "fiddle dee dee~%")

; output:
; in handler
; key:quit args:(1)
; has-plan: #f
; 1..0
; fiddle dee dee
