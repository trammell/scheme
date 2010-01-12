#!/usr/bin/env guile -s
vim: set filetype=scheme : !#

; load the test harness
(load "../test.scm")
(load-from-path "scramble.scm")

; define the test variables
(define tup1 '(1 1 1 3 4 2 1 1 9 2))

;(display tup1)
;(display (scramble tup1))

; check the behavior of (scramble ...)
(assert-equal "scramble tup1" (scramble tup1) '(1 1 1 1 1 4 1 1 1 9))


