#!/usr/bin/env guile -s
vim: set filetype=scheme : !#

; load the test harness
(load "../test.scm")
(load-from-path "member.scm")

; define the test variables
(define a 'sardines)
(define b 'tuna)
(define lat '(italian sardines parsley spaghetti))

; check the behavior of (member? ...)
(assert "a in lat" (member? a lat))
(assert "b not in lat" (not (member? b lat)))

