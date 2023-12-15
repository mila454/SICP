(define (double number)
  (+ number number))

(define (halve number)
  (/ number 2))

(define (fast-mul a b)
  (cond ((= b 0) 0)
        ((even? b) (fast-mul (double a) (halve b)))
      ((+ a (fast-mul a (- b 1))))))
