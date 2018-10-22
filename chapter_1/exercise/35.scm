(load "1.3.3.scm")

(define (golden x)
    (fixed-point (lambda (y) (+ 1.0 (/ 1.0 y))) x))