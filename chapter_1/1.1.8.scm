(define (sqrt x)
    (define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess x)
        (avarage guess (/ x guess)))
    (define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x) x)))
    (sqrt-iter 1.0 x))

(define (sqrt2 x)
    (define (good-enough? guess)
        (< (abs (- (square guess) x)) 0.001))
    (define (improve guess)
        (avarage guess (/ x guess)))
    (define (sqrt-iter guess)
        (if (good-enough? guess)
            guess
            (sqrt-iter (improve guess))))
    (sqrt-iter 1.0))


(define (square x)
    (* x x))
  
  (define (abs x)
    (if (< x 0)
        (- 0 x)
        x))

(define (avarage x y)
  (/ (+ x y) 2))