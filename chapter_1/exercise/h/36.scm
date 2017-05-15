(load "1.3.3.scm")

(define (f x)
  (fixed-point (lambda (y) (/ (log 1000) (log y)))
	       x))

(define (f2 x)
  (fixed-point (lambda (y) (average y (/ (log 1000) (log y))))
	       x))

