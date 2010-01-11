#!/usr/bin/env guile -s
vim: set filetype=scheme : !#

; load the test harness
(load "../test.scm")
(load-from-path "two-in-a-row.scm")

; define the test variables
(define lat1 '(Italian sardines sardines spaghetti parsley))
(define lat2 '(Italian sardines more sardines spaghetti))
(define lat3 '(b d e i i a g))

; check the behavior of (member? ...)
(assert "two-in-a-row lat1" (two-in-a-row? lat1))
(assert "not two-in-a-row lat2" (not (two-in-a-row? lat2)))
(assert "two-in-a-row lat3" (two-in-a-row? lat3))

