(define (pascal row col)
    (cond
        ((= col 0) 1)
        ((= row col) 1)
        (else (+ (pascal (- row 1) (- col 1))
                (pascal (- row 1) col)))))

; Should be 1
(pascal 0 0)

; Should be 2
(pascal 2 1)

; Should be 6
(pascal 4 2)

; Should be 11628
(pascal 19 5)
