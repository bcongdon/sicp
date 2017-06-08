; Also is iterative, so serves for question 18

(define (mul x y)
    (define (double x) (+ x x))
    (define (even? x) (= (remainder x 2) 0))
    (define (half x) (/ x 2))
    (define (iter a b c)
        (cond ((= a 1) (+ b c))
            ((even? a) (iter (half a) (double b) c))
            (else (iter (- a 1) b (+ c b)))))

    (iter x y 0))

; Should be 6
(mul 3 2)

; Should be 50
(mul 5 10)

; Should be 9741912960
(mul 123456 78910)
