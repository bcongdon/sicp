(define (cube-root x)
    (define (cube y) (* y (* y y)))
    (define (good-enough guess)
        (< (abs (- (cube guess) x)) 0.0001))
    (define (improve guess)
        (/ (+ (/ x (* guess guess)) (* 2 guess))
            3))
    (define (cube-root-iter guess)
        (if (good-enough guess)
            guess
            (cube-root-iter (improve guess))))
    (cube-root-iter 1.0))

; Should be ~2.08
(cube-root 9)

; Should be ~497.93
(cube-root 123456789)
