(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
            (sum term (next a) next b))))

(define (inc n)
    (+ n 1))

(define (cube n)
    (* n n n))

(define (sum-cubes a b)
    (sum cube a inc b))

(define (indetity x) x)

(define (sum-integer a b)
    (sum indetity a inc b))

(define (pi-sum a b)
    (sum (lambda (x) (/ 1.0 (* x (+ x 2))))
        a
        (lambda (x) (+ x 4))
        b))

(define (integal f a b dx)
    (* (sum f
            (+ a (/ dx 2.0))
            (lambda (x) (+ x dx))
            b)
        dx))