(define (cube x) (* x x x))
(define (p x) (- (* 3 x) (* 4 (cube x))))
(define (sine angle)
    (display "called!\n")
    (if (not (> (abs angle) 0.1))
        angle
        (p (sine (/ angle 3.0)))))

; p will be called log-3(angle) times
;   (because at each iteration we do angle /= 3)
(sine 12.15)  ; Calls p 5 times
(sine 1215)   ; Calls p 9 times
(sine 121500) ; Calls p 13 times