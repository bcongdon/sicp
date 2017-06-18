(define (cont-frac n d k)
    (define (iter k result)
        (if (< k 0)
            result
            (iter (- k 1) (/ (n k) (+ (d k) result)))))
    (iter k 0.0))

(define (num i) 1)
(define (dem i)
    (if (= 1 (remainder i 3))
        (* 2 (+ (/ (- i 1) 3) 1))
        1))

; e
(+ 2 (cont-frac num dem 10))
(+ 2 (cont-frac num dem 1000))
