(define (compose f g)
    (lambda (x)
        (f (g x))))

(define (repeated f i)
    (define (iter i result)
        (if (= i 1)
            result
            (iter (- i 1) (compose result f))))
    (iter i f))

(define dx 0.00001)

(define (smooth f)
    (lambda (x)
        (/ (+ (f (- x dx))
                (f x)
                (f (+ x dx)))
            3)))

(define (f x) (/ (cos x) x))

(f 5)
((smooth f) 5)

(define (n-fold-smooth f n)
    (repeated (smooth f) n))

((n-fold-smooth f 5) 5)
