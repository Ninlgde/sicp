(load "16.scm") ;; even?
(load "21.scm") ;; square
(define (expmod base exp m)
  (cond ((= exp 0) 1)
	((even? exp)
	 (remainder (square (expmod base (/ exp 2) m))
		    m))
	(else
	 (remainder (* base (expmod base (- exp 1) m))
		    m))))

(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fermat-test-2 n m)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it m))

(define (carmicheal-test n m)
  (if (> n m)
      (if (fermat-test-2 n m)
	  (carmicheal-test n (+ m 1))
	  false)
      true))

(define (carmicheal? n)
  (if (prime? n)
      false
      (carmicheal-test n 0)))
      

(define (fast-prime? n times)
  (cond ((= times 0) true)
	((fermat-test n) (fast-prime? n (- times 1)))
	(else false)))
