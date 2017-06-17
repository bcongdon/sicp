(define (sum term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))))
    (iter a 0))

(define (inc x) (+ x 1))
(define (iden x) x)

; Should be 55
(sum iden 0 inc 10)

(define (cube x) (* x x x))

; Should be 3025
(sum cube 1 inc 10)
