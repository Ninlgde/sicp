(load "exercise/16.scm")
(define double
    (lambda (n) (+ n n)))

(define halve
    (lambda (n) (/ n 2)))

(define (* a b)
    (cond ((= b 0) 0)
        ((even? b) (double (* a (halve b))))
        (else (+ a (double (* a (halve (- b 1))))))))