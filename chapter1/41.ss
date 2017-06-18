(define (double f)
    (lambda (x) (f (f x))))

(define (inc x) (+ x 1))

; Should be 4
((double inc) 2)

; Should be 21
(((double (double double)) inc) 5)
