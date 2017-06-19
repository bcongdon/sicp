(define (make-point x y)
    (cons x y))

(define (x-point point) (car point))
(define (y-point point) (cdr point))

(define (make-segment start end)
    (cons start end))

(define (start-segment segment) (car segment))
(define (end-segment segment) (cdr segment))

(define (average x y) (/ (+ x y) 2))

(define (midpoint segment)
    (make-point
        (average (x-point (start-segment segment)) (x-point (end-segment segment)))
        (average (y-point (start-segment segment)) (y-point (end-segment segment)))))

(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")"))

(define segment (make-segment
    (make-point 1.0 0)
    (make-point 0 -1.0)))

; Should display (0.5, -0.5)
(print-point (midpoint segment))
