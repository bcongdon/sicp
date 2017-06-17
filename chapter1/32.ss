(define (accumulate combiner null-val term a next b)
    (cond ((> a b) null-val)
        (else (combiner (term a)
            (accumulate combiner null-val term (next a) next b)))))

; Can easily describe sum/product in terms of accumulate
(define (sum term a next b) (accumulate + 0 term a next b))
(define (product term a next b) (accumulate * 1 term a next b))

(define (inc x) (+ x 1))
(define (iden x) x)

; Should be 55
(sum iden 0 inc 10)

; Should be 3628800
(product iden 1 inc 10)

; Accumulate can easily be described iteratively
(define (accumulate-iter combiner null-val term a next b)
    (define (iter a result)
        (cond ((> a b) result)
            (else (iter (next a) (combiner (term a) result)))))
    (iter a null-val))

(define (sum-iter term a next b) (accumulate-iter + 0 term a next b))
(define (product-iter term a next b) (accumulate-iter * 1 term a next b))

; Should be 55
(sum-iter iden 0 inc 10)

; Should be 3628800
(product-iter iden 1 inc 10)
