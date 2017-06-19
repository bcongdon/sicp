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

(define (make-rect bottom-left upper-right)
    (make-segment bottom-left upper-right))

(define (width rect)
    (abs (- (x-point (start-segment rect)) (x-point (end-segment rect)))))

(define (height rect)
    (abs (- (y-point (start-segment rect)) (y-point (end-segment rect)))))

(define (perimeter rect)
    (+
        (* 2 (width rect))
        (* 2 (height rect))))

(define (area rect)
    (* (height rect) (width rect)))

(define rect (make-rect
    (make-point -1 -1)
    (make-point  1  1)))

; Should be 8
(perimeter rect)

; Should be 4
(area rect)
