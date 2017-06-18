(define tolerance 0.00001)

(define (fixed-point f init-guess)
    (define (good-enough? a b)
        (< (abs (- a b)) tolerance))
    (define (try guess)
        (let ((next (f guess)))
            (if (good-enough? guess next)
                next
                (try next))))
    (try init-guess))

(define (compose f g)
    (lambda (x)
        (f (g x))))

(define (repeated f i)
    (define (iter i result)
        (if (= i 1)
            result
            (iter (- i 1) (compose result f))))
    (iter i f))

(define (avg-damp f)
    (lambda (x) (/ (+ x (f x)) 2)))

(define (logbase b x) (/ (log x) (log b)))

(define (nth-root n x)
    (define damps-needed (floor (logbase 2 n)))
    (fixed-point ((repeated avg-damp damps-needed)
        (lambda (y) (/ x (expt y (- n 1)))))
        10.0))

; Should be 2.080
(nth-root 3 9)

; Should be 1.16212
(nth-root 124 123456123)

