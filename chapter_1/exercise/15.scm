(define cube
  (lambda (x)
    (* x x x)))

(define p
  (lambda (x)
    (- (* 3 x)(* 4 (cube x)))))

(define sine
  (lambda (angle)
    (if (not (> (abs angle) 0.1))
	angle
	(p (sine (/ angle 3.0))))))
