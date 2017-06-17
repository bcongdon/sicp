(define (product term a next b)
    (cond ((> a b) 1)
        (else (* (term a) (product term (next a) next b)))))

(define (iden x) x)
(define (inc x) (+ x 1))

; Should be 3628800
(product iden 1 inc 10)

(define (factorial n) (product iden 1 inc n))

; Should be 720
(factorial 6)

(define (product-iter term a next b)
    (define (iter a result)
        (cond ((> a b) result)
            (else (iter (next a) (* (term a) result)))))
    (iter a 1))

; Should be 3628800
(product-iter iden 1 inc 10)
