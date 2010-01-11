#!/usr/bin/env guile -s
vim: set filetype=scheme : !#

; load the test harness
(load "../test.scm")
(load-from-path "sum-of-prefixes.scm")

; define the test variables
(define tup1 '(2 1 9 17 0))
(define tup2 '(1 1 1 1 1))

; check the behavior of (member? ...)
(assert-equal "sum-of-prefixes tup1" (sum-of-prefixes tup1) '(2 3 12 29 29))
(assert-equal "sum-of-prefixes tup2" (sum-of-prefixes tup2) '(1 2 3 4 5))


