(use-modules (test TAP ioca))
(load-from-path "rember.scm")

(plan 2)

(is (rember 'mint '(lamb chops and mint jelly))
    '(lamb chops and jelly))

(is (rember 'mint '(lamb chops and mint flavored mint jelly))
    '(lamb chops and flavored mint jelly)) 
