(define (sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
		 x)))

(define (improve guess x)
  (avarage guess (/ x guess)))

(define (avarage x y)
  (/ (+ x y) 2))

(define (new-good-enough? guess x)
  (< (abs (- guess x)) 0.001))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (square x)
  (* x x))

(define (abs x)
  (if (< x 0)
      (- 0 x)
      x))

