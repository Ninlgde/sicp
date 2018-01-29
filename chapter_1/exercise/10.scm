(define (A x y)
  (cond
   ((= y 0) 0)
   ((= x 0) (* 2 y))
   ((= y 1) 2)
   (else (A (- x 1)
	    (A x (- y 1))))))

; f = 2n 
(define (f n)
  (A 0 n))

; g = 2 ^ n
(define (g n)
  (A 1 n))

; h = 2 ^ 2 ^ .... ^ 2 (n个)
(define (h n)
  (A 2 n))

; k = 5 * n ^ 2
(define (k n)
  (* 5 n n))