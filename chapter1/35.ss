; Proof that golden-ratio is a fixed-point of x => 1 + 1/x
; G^2 = G + 1
; G = (G + 1) / G
; G = 1 + 1/G

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

(define (gold-fp x) (+ 1 (/ 1 x)))

(define gold-ratio (fixed-point gold-fp 1.0))

gold-ratio
