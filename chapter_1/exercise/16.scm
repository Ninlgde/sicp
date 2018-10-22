(define (fast-exp b n)
    (define (iter b n a)
        (if (<= n 1)
            (* a b)
            (if (even? n)
                (iter (* b b) (/ n 2) a)
                (iter (* b b) (/ (- n 1) 2) (* a b)))))
    (iter b n 1))

(define (even? n)
  (= (remainder n 2) 0))