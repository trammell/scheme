(use-modules (test TAP ioca))
(load-from-path "atom_p.scm")

(plan 5)

(is (atom? 'atom)    #t)
(is (atom? 'turkey)  #t)
(is (atom? '1492)    #t)
(is (atom? 'u)       #t)
(is (atom? '*abc$)   #t)

