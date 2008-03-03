(use-modules (test TAP ioca))
(load-from-path "scheme.scm")

(plan 3)

(define expr '(cond (coffee klatsch) (else party)))
(define table '(((coffee) (#t)) ((klatsch party) (5 (6)))))

(is (else? 'else) #t)
(is (else? 'foo)  #f)

;(diag expr)
;(diag table)
(is (*cond expr table) 5)

