(define (filtered-accumulate filter combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (if (filter a)
                        (term a)
                        null-value)
                (filtered-accumulate filter combiner null-value term (next a) next b))))

(define (filtered-accumulate filter combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (combiner result
                                    (if (filter a)
                                        (term a)
                                        null-value)))))
    (iter a null-value))


(load "1.2.6.scm")
(load "1.3.1.scm")

(define (sum-prime a b)
    (filtered-accumulate prime? + 0 indetity a inc b))

(define (sum-n n)
    (define (check x)
        (= (gcd x n) 1))
    (filtered-accumulate check + 0 indetity 2 inc n))

(define (sum-n n)
    (filtered-accumulate (lambda (x) (= (gcd x n) 1))
                        + 0 indetity 2 inc n))