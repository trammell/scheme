; (Exercise 1.3) The list '(all these problems) can be constructed by
; "(cons a (cons b (cons c d)))", where
;        a is 'all,
;        b is 'these,
;        c is 'problems, and
;        d is '().
;
; Write down how you would construct the following lists:
;        (all (these problems))
;        (all (these) problems)
;        ((all these) problems)
;        ((all these problems))

(define a 'all)
(define b 'these)
(define c 'problems)
(define d '())

(load-from-path "test-tap.scm")
(plan 6)

(is
   (cons a (cons (cons b (cons c d)) d))
   '(all (these problems)))

(is
  (cons a (cons (cons b d) (cons c d))) 
  '(all (these) problems))

(is
  (cons (cons a (cons b d)) (cons c d))
  '((all these) problems))

(is
  (cons (cons a (cons b (cons c d))) d)
  '((all these problems)))

(isnt
  (cons (cons a (cons b (cons c d))) d)
  '((all (these) problems)))

(is
  (cons (cons a (cons b (cons c d))) d)
  '((all these problems)))

