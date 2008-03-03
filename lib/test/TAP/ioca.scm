; helper functions for generating TAP (Test Anything Protocol) output.  For
; further discussion of TAP, see:
;     http://search.cpan.org/dist/Test-Harness/lib/Test/Harness/TAP.pod
;     http://testanything.org/

(define-module (test TAP ioca)
   #:export (plan ok is isnt diag))

(define (diag-single msg)
  (display "# ")
  (display msg)
  (newline))

(define (diag msgs)
   (map diag-single (string-split msgs #\newline)))

(define (make-tapioca)
  
  (let ((index 0)
        (max #f))
    
    (define (display-ok)
      (begin (set! index (+ index 1))
             (display "ok ")
             (display index)
             (newline)))

    (define (display-not-ok)
      (begin (set! index (+ index 1))
             (display "not ok ")
             (display index)
             (newline)))

    (define (plan n)
      (cond (max (error "Multiple calls to (plan)"))
            (else (begin (set! max n)
                         (display '1..)
                         (display max)
                         (newline)
                         max))))

    ; FIXME: need to implement this.  Not sure how to implement something
    ; equivalent to Perl's END { ... } block in Scheme.
    (define (no-plan) #f)

    (define (ok bool)
      (cond (bool (display-ok))
            (else (display-not-ok))))

    (define (is s1 s2)
      (cond ((equal? s1 s2) (display-ok))
            (else (display-not-ok))))

    (define (isnt s1 s2)
      (cond ((equal? s1 s2) (display-not-ok))
            (else (display-ok))))

   (define (dispatch msg)
     (cond ((eq? msg 'plan) plan)
           ((eq? msg 'no-plan) no-plan)
           ((eq? msg 'ok) ok)
           ((eq? msg 'is) is)
           ((eq? msg 'isnt) isnt)
           (else (error "Unknown TAP-ioca request" msg))))

   dispatch))

(define tapioca      (make-tapioca))
(define (no-plan)    ((tapioca 'no-plan) n))
(define (plan n)     ((tapioca 'plan) n))
(define (ok bool)    ((tapioca 'ok) bool))
(define (is s1 s2)   ((tapioca 'is) s1 s2))
(define (isnt s1 s2) ((tapioca 'isnt) s1 s2))

(add-hook! exit-hook (lambda () (exit 99)))

(display )

;; (add-hook! exit-hook (lambda () ... )

