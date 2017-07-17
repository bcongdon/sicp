(define (fringe tree)
    (define elem
        (if (null? tree)
            '()
            (car tree)))
    (cond
        ((null? elem) '())
        ((pair? elem) (append (fringe elem) (fringe (cdr tree))))
        (else (append (list elem) (fringe (cdr tree))))))

(define x 
    (list (list 1 2) (list 3 4)))

(fringe x)

(fringe (list x x))
