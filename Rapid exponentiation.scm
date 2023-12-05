;;V1
(define (solution b n)
  (cond ((= n 0) 1)
        ((even? n) (squire (solution b (/ n 2))))
        (else (* b (solution b (- n 1))))))

(define (even? n)
  (= (reminder n 2) 0))

(define (squire a)
  (* a a))

(define (reminder n m)
  (- n (* m (floor (/ n m)))))
(check-equal? (solution 10 0) 1)

;;V2
(define (solution b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                (- counter 1)
                (* b product))))
