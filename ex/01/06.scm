; (Exercise 1.6) If "a" is "atom", is there a list "l" that makes "(null?
; (cons a l))" true?

; No.  "null?" is only true for an empty list; there's no way to make an
; empty list with "cons".

