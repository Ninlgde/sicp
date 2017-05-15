(define (f1 n)
  (cond ((< n 3) n)
	(else (+ (f1 (- n 1))
		 (* 2 (f1 (- n 2)))
		 (* 3 (f1 (- n 3)))))))

(define (f2 n)
  (itr-f2 2 1 0 (- n 2)))

(define (itr-f2 a b c n)
  (if (= n 0)
      a
      (itr-f2 (+ a (* 2 b) (* 3 c)) a b (- n 1))))
