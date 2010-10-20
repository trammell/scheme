(load-from-path "atom_p.scm")

(display (atom? 'abc))
(newline)
(display (not (atom? '())))
(newline)
(display (not (atom? '(foo))))
(newline)

