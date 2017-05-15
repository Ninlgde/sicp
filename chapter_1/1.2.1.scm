(define (factorial1 n)
  (if (= n 1)
      1
      (* n (factorial1 (- n 1)))))

(define (factorial2 n)
  (define (fact-iter product counter max-count)
    (if (> counter max-count)
	product
	(fact-iter (* counter product)
		   (+ counter 1)
		   max-count)))
  (fact-iter 1 1 n))
