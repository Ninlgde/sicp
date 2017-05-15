(define Y
  (lambda (F)
    (let ((W (lambda (x)
	       (F (lambda arg (apply (x x) arg))))))
	  (W W))))

(define f
  (lambda (self)
    (lambda (n)
      (if (zero? n)
	  1
	  (* n (self (- n 1)))))))
