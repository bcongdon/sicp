(define (cont-frac n d k)
    (if (= k 0)
        0
        (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))

; Finding golden ratio
(/ 1
    (cont-frac (lambda (i) 1.0)
        (lambda (i) 1.0)
        100))

(define (cont-frac-iter n d k)
    (define (iter k result)
        (if (< k 0)
            result
            (iter (- k 1) (/ (n k) (+ (d k) result)))))
    (iter k 0.0))

; Finding golden ratio iteratively
(/ 1
    (cont-frac-iter (lambda (i) 1.0)
        (lambda (i) 1.0)
        100))
