(define tolerance 0.0001)

(define (fixed-point f init-guess)
    (define (good-enough? a b)
        (< (abs (- a b)) tolerance))
    (define (try guess)
        (display guess)
        (display #\newline)
        (let ((next (f guess)))
            (if (good-enough? guess next)
                next
                (try next))))
    (try init-guess))

(define (avg x y) (/ (+ x y) 2))

(define (no-damp x) (/ (log 1000) (log x)))
(define (with-damp x) (avg x (no-damp x)))

; Finding solution to x^x = 1000

; ~28 steps
(fixed-point no-damp 10)
; ~7 steps
(fixed-point with-damp 10)
