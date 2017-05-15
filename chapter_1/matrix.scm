(define m*
  (lambda (m1 m2)
    (cons
     (cons
      (+ (* (caar m1) (caar m2))
	 (* (cdar m1) (cadr m2)))
      (+ (* (caar m1) (cdar m2))
	 (* (cdar m1) (cddr m2))))
     (cons
      (+ (* (cadr m1) (caar m2))
	 (* (cddr m1) (cadr m2)))
      (+ (* (cadr m1) (cdar m2))
	 (* (cddr m1) (cddr m2)))))))

(define fib-mat
  (cons
   (cons 1 1)
   (cons 1 0)))

(define fib-matrix
  (lambda (n)
    (define fib-iter
      (lambda (mf m count)
	(if (= count 1)
	    mf
	    (fib-iter (m* mf m) m (- count 1)))))
    (define result-m (fib-iter fib-mat fib-mat n))
    (display result-m)
    (cdar result-m)))

(load "whatthefuck.scm")

(define fib-wtf
  (lambda (n)
    (define fib-iter
      (lambda (self)
	(lambda (mf m count)
	  (if (zero? count)
	      mf
	      (self (m* mf m) m (- count 1))))))
    (define result-m ((Y fib-iter) fib-matrix fib-matrix n))
    (display result-m)
    (cdar result-m)))
