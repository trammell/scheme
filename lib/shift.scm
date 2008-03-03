
(load-from-path "build.scm")
(load-from-path "first.scm")
(load-from-path "second.scm")

; Little-Schemer p. 152
(define shift
  (lambda (p)
    (build (first (first p))
           (build (second (first p)) 
                  (second p)))))

