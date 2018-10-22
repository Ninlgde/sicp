(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
    (if (prime? n)
        (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
    (display " *** ")
    (display elapsed-time))

; 现在的机器 请从10000000000开始
(define (search-for-primes n count)
    (if (= count 0)
        0
        (if (prime? n)
            (begin (timed-prime-test n)
             (search-for-primes (+ n 1) (- count 1)))
            (search-for-primes (+ n 1) count))))