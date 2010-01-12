
; This is a bit of a contrived example to show how helper functions can be
; handy.  This would be a better learning material if we were calculating
; something valuable!

(load "pick.scm")

(define scramble-b
  (lambda (tup rev-pre)
    (cond ((null? tup) '())
          (else
            (let ((new-rev-pre (cons (car tup) rev-pre)))
              (cons (pick (car tup) new-rev-pre)
                    (scramble-b (cdr tup) new-rev-pre)))))))

(define scramble
  (lambda (tup)
    (scramble-b tup '())))

