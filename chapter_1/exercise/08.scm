(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x)
		 x)))

(define (improve guess x)
  (/ (+ (/ x 
	   (square guess)) 
	(* 2 guess)) 
     3))

(define (avarage x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube-root x)
  (cube-root-iter 1.0 x))

(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (abs x)
  (if (< x 0)
      (- 0 x)
      x))

