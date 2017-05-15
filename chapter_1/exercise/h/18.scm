(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (* a b)
  (if (= b 0) 
      0
      (itr-* a b 0)))

(define (itr-* a b c)
  (if (<= b 1)
      (+ a c)
      (if (even? b)
	  (itr-* (double a) (halve b) c)
	  (itr-* (double a) (halve (- b 1)) (+ a c)))))
