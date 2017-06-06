(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; If b > 0, then a + b
; If b < 0, then a - b

; Should be 5 + 5 = 10
(a-plus-abs-b 5 5)

; Should be 5 - (-5) = 10
(a-plus-abs-b 5 (- 5))
