(define (reverse l)
    (if (null? (cdr l))
        l 
        (append (reverse (cdr l)) (list (car l)))))

(define (deep-reverse lists)
    (if (not (pair? (cdr lists)))
        (list (reverse (car lists)))
        (append (deep-reverse (cdr lists))
            (list (reverse (car lists))))))

(deep-reverse (list (list 1 2) (list 3 4) (list 5 6)))
