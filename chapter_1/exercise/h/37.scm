(load "1.3.3.scm")
(load "35.scm")

(define (cont-frac n d k)
  (define (iter i result)
    (cond ((= i 0) result)
	  ((= i k) (iter (- i 1) (/ (n i) (d i))))
	  (else
	   (iter (- i 1) (/ (n i) (+ (d i) result))))))
  (iter k 0))

(define (find-k)
  (define result
    (/ 1 (gold 1)))
  (define (iter i)
    (if (close-enough? result
		       (cont-frac (lambda (j) 1.0)
				  (lambda (j) 1.0)
				  i))
	((display i)
	 (newline))
	(iter (+ i 1))))
  (iter 1))
