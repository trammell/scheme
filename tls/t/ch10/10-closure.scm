(use-modules (test TAP ioca))
(load-from-path "scheme.scm")

(plan 11)

; Little Schemer, Chapter 10, p. 189
(define closure '((((u v w) (1 2 3)) ((x y z) (4 5 6)))
                  (x y)
                  (cons z x)))
(define vals '((a b c) (d e f)))

(is (table-of closure)   '(((u v w) (1 2 3)) ((x y z) (4 5 6))))
(is (formals-of closure) '(x y))
(is (body-of closure)    '(cons z x))

; this is the new entry created from arguments "(a b c) (d e f)" passed in
; as formal arguments (x y)
(is
  (new-entry (formals-of closure) vals)
  '((x y) ((a b c) (d e f))))

; and this the new table that will be used to determine the value of the
; closure
(is
  (extend-table
    (new-entry (formals-of closure) vals)
    (table-of closure))
  '(((x y) ((a b c) (d e f))) ((u v w) (1 2 3)) ((x y z) (4 5 6))))

; alias the extended table for future use
(define extended-table
  (extend-table
    (new-entry (formals-of closure) vals)
    (table-of closure)))

;(diag "closure body:")
;(diag (body-of closure))

;(diag "meaning of closure body with extended table:")
;(diag
;  (meaning
;    (body-of closure)   ; (cons z x)
;    extended-table))

; verify that the right 
(is (meaning 'u extended-table) '1)
(is (meaning 'v extended-table) '2)
(is (meaning 'w extended-table) '3)
(is (meaning 'x extended-table) '(a b c))
(is (meaning 'y extended-table) '(d e f))
(is (meaning 'z extended-table) '6)

;(diag (evlis '(z x) extended-table))

; calls list-to-action; which categorizes this as an *application
; (diag (expression-to-action '(cons z x)))
; 
; (diag (meaning 'cons extended-table))
; 
; (diag
;   (apply '(primitive cons) '(6 (a b c))))
; 
; (diag
;   (apply-primitive 'cons '(6 (a b c))))


