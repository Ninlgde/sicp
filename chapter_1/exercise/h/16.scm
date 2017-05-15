(define (fast-expt b n)
  (cond ((= n 0) 1)
	((> n 0) (itr-fast-expt b n 1))))

(define (itr-fast-expt b n a)
  (if (<= n 1)
      (* a b)
      (if (even? n)
	  (itr-fast-expt (* b b) (/ n 2) a)
	  (itr-fast-expt (* b b) (/ (- n 1) 2) (* a b)))))

(define (even? n)
  (= (remainder n 2) 0))
