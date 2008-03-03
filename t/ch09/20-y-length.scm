; See discussion in Little Schemer, Chapter 9, p. 172

(use-modules (test TAP ioca))
(load-from-path "add1.scm")
(load-from-path "Y.scm")

(plan 6)

(define length-template
   (lambda (length)
     (lambda (l)
       (cond ((null? l) 0)
             (else (add1 (length (cdr l))))))))

(is ((Y length-template) '(a b c)) 3)

(define my-length (Y length-template))

(is   (my-length '()) 0)
(is   (my-length '(a)) 1)
(is   (my-length '(a b c)) 3)
(is   (my-length '(a b c d e)) 5)
(isnt (my-length '(a b c d e a b c d e)) 5)

