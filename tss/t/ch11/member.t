#!/usr/bin/env guile -L . -s
vim: set filetype=scheme : !#

(define a 'sardines)
(define b 'tuna)
(define lat '(italian sardines parsley spaghetti))

(load "../test.scm")
(load-from-path "member.scm")

(assert "a in lat" (member? a lat))
(assert "b not in lat" (not (member? b lat)))

