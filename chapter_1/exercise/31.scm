(load "1.3.1.scm")

(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
            (product term (next a) next b))))

(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))))
    (iter a 1))

(define (factorial n)
    (define (f x)
        (if (even? x)
            (/ (+ 2 x) (+ 3 x))
            (/ (+ 3 x) (+ 2 x))))
    (product f 0 inc n))