(define (make-rat n d)
    (let ((g (gcd n d))
          (n-act (if (< d 0)
                    (- n)
                    n)))
        (cons (/ n-act g)
            (/ (abs d) g))))

; Should be (5 4)
(make-rat -5 -4)

; Should be (-5 4)
(make-rat 5 -4)
