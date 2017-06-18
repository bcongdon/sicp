(define (compose f g)
    (lambda (x)
        (f (g x))))

(define (repeated f i)
    (define (iter i result)
        (if (= i 1)
            result
            (iter (- i 1) (compose result f))))
    (iter i f))

(define (square x) (* x x))
(define (inc x) (+ x 1))

; Should be 625
((repeated square 2) 5)
