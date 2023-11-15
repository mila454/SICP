(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))))

(define (f-iter n)
  (define (f-i counter res)
    (if (< counter 3)
      (+ res counter)
      (+ (f-i (- counter 1) res) 
         (* 2 (f-i (- counter 2) res))
         (* 3 (f-i (- counter 3) res)))))
  (if (< n 3)
      n
      (f-i n 0)))  
