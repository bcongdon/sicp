(define dx 0.00001)
(define tolerance 0.00001)
(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) 
            ((deriv g) x)))))

(define (fixed-point f init-guess)
    (define (good-enough? a b)
        (< (abs (- a b)) tolerance))
    (define (try guess)
        (let ((next (f guess)))
            (if (good-enough? guess next)
                next
                (try next))))
    (try init-guess))

(define (newtons-method g guess)
  (fixed-point (newton-transform g) 
               guess))

(define (cubic a b c)
    (lambda (x)
        (+ (* x x x)
            (* a x x)
            (* b x)
            c)))

; Should be -1
(newtons-method (cubic 1 1 1) 1)
