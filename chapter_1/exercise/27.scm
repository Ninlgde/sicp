(load "1.2.6.scm")


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