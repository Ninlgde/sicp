(define (expt1 b n)
  (if (= n 0)
      1
      (* b (expt1 b (- n 1)))))

(define (expt2 b n)
  (define (iter b counter product)
    (if (= counter 0)
	product
	(iter b (- counter 1) (* b product))))
  (iter b n 1))

(define (fast-exp b n)
  (cond ((= n 0) 1)
	((even? n) (square (fast-exp b (/ n 2))))
	(else (* b (fast-exp b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))
