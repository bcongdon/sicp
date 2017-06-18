(define (compose f g)
    (lambda (x)
        (f (g x))))

(define (square x) (* x x))
(define (inc x) (+ x 1))

; Should be 49
((compose square inc) 6)
