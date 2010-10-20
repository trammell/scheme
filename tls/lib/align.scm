
(load-from-path "a_pair_p.scm")
(load-from-path "build.scm")
(load-from-path "first.scm")
(load-from-path "second.scm")
(load-from-path "shift.scm")

; Little-Schemer p. 152
(define align
  (lambda (pair-or-atom)
    (cond
      ((atom? pair-or-atom)             pair-or-atom)
      ((a-pair? (first pair-or-atom))   (align (shift pair-or-atom)))
      (else (build (first pair-or-atom) (align (second pair-or-atom)))))))

