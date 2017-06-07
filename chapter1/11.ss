; Recursive
(define (f-recurse n)
    (if (< n 3)
        3
        (+ (f-recurse (- n 1))
            (* 2 (f-recurse (- n 2)))
            (* 3 (f-recurse (- n 3))))))

; Iterative
(define (f-iter n)
    (define (f-help a b c count)
        (if (< count 1)
            c
            (f-help (+ a (* 2 b) (* 3 c))
                a
                b
                (- count 1))))
    (f-help 3 3 3 n))

; Should be 3
(f-recurse 2)
(f-iter 2)

; Should be 461583
(f-recurse 15)
(f-iter 15)
