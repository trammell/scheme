#!/usr/bin/env guile
; vim: set filetype=scheme :
!#

; load the test harness
(load "../test.scm")
(load-from-path "pick.scm")

; define the test variables

; check the behavior of (member? ...)
(assert-equal "pick test 1" (pick 4 '(4 3 1 1 1)) 1)
(assert-equal "pick test 2" (pick 2 '(2 4 3 1 1 1)) 4)


