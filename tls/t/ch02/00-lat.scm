(use-modules (test TAP ioca))
(load-from-path "lat_p.scm")

(plan 1)

(is (lat? '())       #t)
; (is (lat? 'turkey)   #f)
; (is (lat? '1492)     #f)
; (is (lat? 'u)        #f)
; (is (lat? '*abc$)    #f)

