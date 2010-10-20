; some commands for altering the load path; in guile it's easiest to use
; the "-L" command-line option...
(set! %load-path (cons "../lib" %load-path))
(set! %load-path (cons "lib" %load-path))
