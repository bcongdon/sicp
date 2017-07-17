(define (same-parity x . items)
    (define (parity-check x l)
        (if (null? l)
            `()
            (if (not (= (remainder x 2) (remainder (car l) 2)))
                (parity-check x (cdr l))
                (cons (car l) (parity-check x (cdr l))))))
    (parity-check x items))

; Should be (3 5 7)
(same-parity 1 2 3 4 5 6 7)

; Should be (4 6)
(same-parity 2 3 4 5 6 7)
