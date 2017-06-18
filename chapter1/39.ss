(define (cont-frac n d k)
    (define (iter k result)
        (if (< k 0)
            result
            (iter (- k 1) (/ (n k) (+ (d k) result)))))
    (iter k 0.0))

(define (tan-cf x k)
    (define (num i)
        (if (= i 0)
            x
            (- 0 (* x x))))
    (define (dem i) (+ 1 (* i 2)))
    (cont-frac num dem k))

; Should be 0
(tan-cf 0 100)
; Should be 1.557
(tan-cf 1 100)
; Should be 1
(define pi 3.14159265359)
(tan-cf (/ pi 4) 100)
