(load-from-path "add1.scm")
(load-from-path "sub1.scm")

;; Little Schemer, Chapter 4, p. 60
(define o+
  (lambda (n m)
    (cond ((zero? m) n)
          (else (add1 (o+ n (sub1 m)))))))

;; Little Schemer, Chapter 4, p. 61
(define o-
  (lambda (n m)
    (cond ((zero? m) n)
          (else (sub1 (o- n (sub1 m)))))))

;; Little Schemer, Chapter 4, p. 65
(define o*
  (lambda (n m)
    (cond ((zero? m) 0)
          (else (o+ n (o* n (sub1 m)))))))

;; Little Schemer, Chapter 4, p. 74
(define o^
  (lambda (n m)
    (cond ((zero? m) 1)
          (else (o* n (o^ n (sub1 m)))))))

