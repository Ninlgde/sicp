(load "37.scm")

(define (tan-fc x k)
  (cont-frac (lambda (i)
	       (if (= i 1)
		   x
		   (- 0 (square x))))
	     (lambda (i)
	       (- (* i 2.0) 1.0))
	     k))
