(load "fermat-test.scm")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (fast-prime? n 10)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n m)
  (timed-prime-test n)
  (if (> m 0)
       (if (fast-prime? n 10)
	   (search-for-primes (+ n 2) (- m 1))
	   (if (even? n)
	       (search-for-primes (+ n 1) m)
	       (search-for-primes (+ n 2) m)))
       (display " end ")))
	   
