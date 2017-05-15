(load "16.scm") ;; even?
(load "21.scm") ;; prime?
(load "gcd.scm")
(define (cube n)
  (* n n n))

(define (inc n)
  (+ n 1))

(define (add2 a)
  (+ a 2.0))

(define (func a)
  (/ (* (- a 1.0) (+ a 1.0)) (* a a)))

(define (factorial n)
  (product func 3 add2 n))


(define (accumulate combiner null-value term a next b)
  (define (iter n result)
    (if (> n b)
	result
	(iter (next n) (combiner result (term n)))))
  (iter a null-value))

(define (r-accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
		(r-accumulate combiner null-value term (next a) next b))))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (product term a next b)
  (r-accumulate * 1 term a next b))

(define (filtered-accumulate combiner null-value filter term a next b)
  (define (iter n result)
    (if (> n b)
	result
	(if (filter n)
	    (iter (next n) (combiner result (term n)))
	    (iter (next n) result))))
  (iter a null-value))

(define (f-none a)
  a)

(define (fa a b)
  (filtered-accumulate + 0 prime? f-none a inc b))

(define (fb n)
  (define (filter-gcd-1 a)
    (= (gcd a n) 1))
  (filtered-accumulate * 1 filter-gcd-1 f-none 2 inc n))
