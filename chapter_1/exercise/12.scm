(define pascal
  (lambda (l n)
    (if (or (= l n) (= n 1))
	1
	(+ (pascal (- l 1) (- n 1)) (pascal (- l 1) n)))))


