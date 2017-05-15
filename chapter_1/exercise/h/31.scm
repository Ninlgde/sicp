(load "16.scm") ;; even?
(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (sum term a next b)
  (define (iter n result)
    (if (> n b)
	result
	(iter (next n) (+ result (term n)))))
  (iter a 0))

(define (cube n)
  (* n n n))

(define (inc n)
  (+ n 1))

(define (Simpson-rule f a b n)
  (define h
    (/ (- b a) n))
  (define y0
    (f a))
  (define yn
    (f b))
  (define (yk k)
    (f (+ a (* k h))))
  (define (x-yk k)
    (if (even? k)
	(* 2 (yk k))
	(* 4 (yk k))))
  (define mid
    (sum x-yk 1 inc (- n 1)))
  (* (/ h 3.0) (+ y0 mid yn)))

(define (product term a next b)
  (define (iter n result)
    (if (> n b)
	result
	(iter (next n) (* result (term n)))))
  (iter a 1.0))

(define (r-product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (r-product term (next a) next b))))

(define (add2 a)
  (+ a 2.0))

(define (func a)
  (/ (* (- a 1.0) (+ a 1.0)) (* a a)))

(define (factorial n)
  (r-product func 3 add2 n))
