(define (sumsquares x y) 
    (+ (* x x) (* y y)))

(define (largestSumSq x y z) 
    (cond ((and (< x y) (< x z)) (sumsquares y z))
        ((and (< y x) (< y z)) (sumsquares x z))
        (else (sumsquares x y))))

; Should be 25 + 36 = 61
(largestSumSq 4 5 6)

; Should be 9 + 81 = 90
(largestSumSq 9 1 3)

; Should be 4 + 4 = 8
(largestSumSq 1 2 2)
