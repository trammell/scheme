; (Exercise 2.10)
; The function member? tells whether some atom appears /at least once/ in a
; lat.  Write a function member-twice? which tells whether some atom
; appears /at least twice/ in a lat.

;; Little Schemer, p. 22
(define member?
  (lambda (a l)
    (cond ((null? l) #f)
          (else (or (eq? a (car l))
                    (member? a (cdr l)))))))

(define member-twice?
  (lambda (a l)
    (cond ((null? l) #f)
          ((eq? a (car l)) (member? a (cdr l)))
          (else (member-twice? a (cdr l))))))

(member-twice? 'a '(a cat and a dog))
;;; #t
(member-twice? 'a '(a boy and his dog))
;;; #f
(member-twice? 'and '(a boy and his dog))
;;; #f
(member-twice? 'food '(glorious food glorious food))
;;; #t

