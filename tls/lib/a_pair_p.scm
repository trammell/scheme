(load-from-path "atom_p.scm")

(define a-pair?
  (lambda (x)
    (cond
      ((atom? x)             #f)
      ((null? x)             #f)
      ((null? (cdr x))       #f)
      ((null? (cdr (cdr x))) #t)
      (else                  #f))))

