(define (search-for-primes begin end op) 
   (define (even? n) 
        (= (remainder n 2) 0)) 
   (define (s-f-p n) 
     (cond ((<= n end) 
           (timed-prime-test n op) (s-f-p (+ n 2)))))
  (if (even? begin) 
      (s-f-p (+ begin 1)) 
      (s-f-p begin)))
