(define (fast-mul a b)
 (define (half b)
    (/ b 2))
  
 (define (double a)
    (+ a a))

 (define (even? n)
    (= (remainder n 2) 0))

 (define (summation a res counter)
    (if (< counter 1) 
        res
        (summation a (+ res (double a)) (- counter 1))))
  
 (cond ((= b 0) 0)
       ((= b 1) a)
       ((even? b) (summation a 0 (half b)))
       (else (+ a (summation a 0 (half (- b 1)))))))

(check-equal? (fast-mul 5 6) 30)
(check-equal? (fast-mul 15 3) 45)
