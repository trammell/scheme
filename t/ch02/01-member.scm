(use-modules (test TAP ioca))
(load-from-path "member_p.scm")

(plan 2)

(is (member? 'poached '(fried eggs and scrambled eggs))  #f)
(is (member? 'meat '(mashed potatoes and meat gravy))    #t)
; (is (lat? 'turkey)   #f)
; (is (lat? '1492)     #f)
; (is (lat? 'u)        #f)
; (is (lat? '*abc$)    #f)

