(define (exp b n)
    (define (square x) (* x x))
    (define (even? x) (= (remainder x 2) 0))
    (define (iter a b n)
        (cond ((= n 0) a)
            ((even? n) (iter a (square b) (/ n 2)))
            (else (iter (* a b) b (- n 1)))))

    (iter 1 b n))

; Should be 9
(exp 3 2)

; Should be 9765625
(exp 5 10)
