
;;; (define is-first? (a lat)
;;;   (lambda (a lat)
;;;     (cond
;;;       ((null? lat) #f)
;;;       (else (eq? a (car lat))))))

;;; (define two-in-a-row?
;;;   (lambda (lat)
;;;     (cond
;;;       ((null? lat) #f)
;;;       (else
;;;         (or (is-first? (car lat) (cdr lat))
;;;             (two-in-a-row? (cdr lat)))))))

(define two-in-a-row-b?
  (lambda (preceding lat)
    (cond
      ((null? lat) #f)
      (else (or (eq? preceding (car lat))
                (two-in-a-row-b? (car lat) (cdr lat)))))))

(define two-in-a-row?
  (lambda (lat)
    (cond
      ((null? lat) #f)
      (else (two-in-a-row-b? (car lat) (cdr lat))))))

