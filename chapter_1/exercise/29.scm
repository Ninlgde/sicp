(load "1.3.1.scm")

(define (simpson-rule f a b n)
    (define h
        (/ (- b a) n))
    (define (y k)
        (f (+ a (* k h))))
    (define (simpson k)
        (cond ((= k 0) (y k))
            ((= k n) (y k))
            (else (if (even? k)
                    (* 2 (y k))
                    (* 4 (y k))))))
    (/ (* h (sum simpson 0 inc n)) 3))