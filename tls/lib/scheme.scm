; The entries in this file are for Chapter 10 of the Little Schemer.

(load-from-path "atom_p.scm");
(load-from-path "first.scm");
(load-from-path "second.scm");
(load-from-path "third.scm");
(load-from-path "build.scm");

; Little Schemer, Chapter 10, p. 175
; NB: "build" is used to build lists
(define new-entry build)

; Little Schemer, Chapter 10, p. 176
; NB: an entry is a list of two lists - names and values
(define lookup-in-entry
  (lambda (name entry entry-f)
    (lookup-in-entry-help name (first entry) (second entry) entry-f)))

(define lookup-in-entry-help
  (lambda (name names values entry-f)
    (cond ((null? names) (entry-f name))
          ((eq? name (car names)) (car values))
          (else
            (lookup-in-entry-help name (cdr names) (cdr values) entry-f)))))

; NB: a table is a list of entries
(define extend-table cons)

; Little Schemer, Chapter 10, p. 177
(define lookup-in-table
  (lambda (name table table-f) 
    (cond
      ((null? table) (table-f name))
      (else
        (lookup-in-entry
          name
          (car table)
          (lambda (name)
            (lookup-in-table name (cdr table) table-f)))))))

; Little Schemer, Chapter 10, p. 181
(define expression-to-action
  (lambda (e)
    (cond ((atom? e) (atom-to-action e))
          (else (list-to-action e)))))

(define atom-to-action
  (lambda (a)
    (cond ((number? a)             *const)
          ((eq? a #t)              *const)
          ((eq? a #f)              *const)
          ((eq? a (quote cons))    *const)
          ((eq? a (quote car))     *const)
          ((eq? a (quote cdr))     *const)
          ((eq? a (quote null?))   *const)
          ((eq? a (quote eq?))     *const)
          ((eq? a (quote atom?))   *const)
          ((eq? a (quote zero?))   *const)
          ((eq? a (quote add1))    *const)
          ((eq? a (quote sub1))    *const)
          ((eq? a (quote number?)) *const)
          (else *identifier))))

; Little Schemer, Chapter 10, p. 182
(define list-to-action
  (lambda (l)
    (cond ((atom? (car l))
           (cond
             ((eq? (quote quote)  (car l))  *quote)
             ((eq? (quote lambda) (car l)) *lambda)
             ((eq? (quote cond)   (car l))   *cond)
             (else *application)))
          (else *application))))

(define value
  (lambda (e) (meaning e (quote ()))))

(define meaning
  (lambda (e table)
    ((expression-to-action e) e table)))

; Little Schemer, Chapter 10, p. 183
(define *const
  (lambda (e table)
    (cond ((number? e) e)
          ((eq? e #t) #t)
          ((eq? e #f) #f)
          (else (build (quote primitive) e)))))

(define *quote
  (lambda (e table) (text-of e)))

(define text-of second)

(define *identifier
  (lambda (e table)
    (lookup-in-table e table initial-table)))

; NB: we hope initial-table never gets called, because you cannot ask for
; the car of the empty list!
(define initial-table
  (lambda (name) (car (quote ()))))

; Little Schemer, Chapter 10, p. 184
(define *lambda
  (lambda (e table)
    (build (quote non-primitive) (cons table (cdr e)))))

(define table-of first)
(define formals-of second)
(define body-of third)

; Little Schemer, Chapter 10, p. 185
(define evcon
  (lambda (lines table)
    (cond ((else? (question-of (car lines)))
           (meaning (answer-of (car lines)) table))
          ((meaning (question-of (car lines)) table)
           (meaning (answer-of (car lines)) table))
          (else (evcon (cdr lines) table)))))
 
(define else?
  (lambda (x)
    (cond ((atom? x) (eq? x (quote else)))
          (else #f))))

(define question-of first)
(define answer-of second)

(define *cond
  (lambda (e table)
    (evcon (cond-lines-of e) table)))

(define cond-lines-of cdr)

; Little Schemer, Chapter 10, p. 186
(define evlis
  (lambda (args table)
    (cond ((null? args) (quote ()))
          (else
            (cons (meaning (car args) table)
                  (evlis (cdr args) table))))))

(define *application
  (lambda (e table)
    (apply (meaning (function-of e) table)
           (evlis (arguments-of e) table))))

; Little Schemer, Chapter 10, p. 187
(define function-of car)
(define arguments-of cdr)

(define primitive?
  (lambda (l) (eq? (first l) (quote primitive))))

(define non-primitive?
  (lambda (l) (eq? (first l) (quote non-primitive))))

(define apply
  (lambda (fun vals)
    (cond ((primitive? fun) (apply-primitive (second fun) vals))
          ((non-primitive fun) (apply-closure (second fun) vals)))))

; Little Schemer, Chapter 10, p. 188
(define apply-primitive
  (lambda (name vals)
    (cond
      ((eq? name (quote cons))    (cons (first vals) (second vals)))
      ((eq? name (quote car))     (car (first vals)))
      ((eq? name (quote cdr))     (cdr (first vals)))
      ((eq? name (quote null?))   (null? (first vals)))
      ((eq? name (quote eq?))     (eq? (first vals) (second vals)))
      ((eq? name (quote atom?))   (:atom? (first vals)))
      ((eq? name (quote zero?))   (zero? (first vals)))
      ((eq? name (quote add1))    (add1 (first vals)))
      ((eq? name (quote sub1))    (sub1 (first vals)))
      ((eq? name (quote number?)) (number? (first vals))))))

(define :atom?
  (lambda (x)
    (cond ((atom? x) #t)
          ((null? x) #f)
          ((eq? (car x) (quote primitive)) #t)
          ((eq? (car x) (quote non-primitive)) #t)
          (else #f))))

; Little Schemer, Chapter 10, p. 189
; NB: "a closure" is identical to "a non-primitive function"
(define apply-closure
  (lambda (closure vals)
    (meaning
      (body-of closure)
      (extend-table
        (new-entry (formals-of closure) vals) (table-of closure)))))

