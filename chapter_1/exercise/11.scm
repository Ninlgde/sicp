(define f
  (lambda (n)
    (if (< n 3)
	n
	(+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))


(define f2
  (lambda (n)
    (define f-iter
      (lambda (a b c n)
	(if (zero? n)
	    a
	    (f-iter (+ a (* 2 b) (* 3 c)) a b (- n 1)))))
    (f-iter 2 1 0 (- n 2))))
