(define (double number)
  (+ number number))

(define (halve number)
  (/ number 2))

(define (fast-mul a counter result)  
  (cond ((= counter 0) result)  
        ((even? counter) (fast-mul (double a) (halve counter) result))
      ((+ a (fast-mul a (- counter 1) result)))))

(define (mul-iter a b)
  (if (= b 0)
      0
      (fast-mul a b 0)))
