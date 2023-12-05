;;V1
(define (solution b n)
  (cond ((= n 0) 1)
        ((even? n) (squire (solution b (/ n 2))))
        (else (* b (solution b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

(define (squire a)
  (* a a))


;;V2
(define (solution b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                (- counter 1)
                (* b product))))
