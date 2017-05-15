(load "37.scm")

(define (find-e k)
  (cont-frac (lambda (i) 1.0)
	     (lambda (i)
	       (cond ((= (remainder i 3) 1) 1)
		     ((= (remainder i 3) 2)
		      ((lambda (x) (+ (* (/ 2 3) (- x 2)) 2))
		       i))
		     ((= (remainder i 3) 0) 1)))
	     k))
		      
