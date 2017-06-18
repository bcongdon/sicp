(define (iterative-improve good-enough? improve init-guess)
    (lambda (x)
        (define (iter guess)
            (if (good-enough? guess x)
                guess
                (iter (improve guess x))))
        (iter init-guess)))

(define tolerance 0.0001)
(define (avg x y) (/ (+ x y) 2))
(define (good-enough-sqrt guess x)
    (< (abs (- (* guess guess ) x)) tolerance))

(define (improve-sqrt guess x)
    (avg guess (/ x guess)))

(define sqrt (iterative-improve good-enough-sqrt improve-sqrt 1.0))

; Should be 11
(sqrt 121)

; Should be 351.36
(sqrt 123456)

(define (fixed-point f guess)
    (define improve-fp (lambda (guess x) (f guess)))
    (define (good-enough-fp guess x) (< (abs (- guess (f guess))) tolerance))
    (define fp (iterative-improve good-enough-fp improve-fp 1.0))
    (fp guess))

; Should be .73908
(fixed-point cos 1.0)
