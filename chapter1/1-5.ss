(define (p) (p))

(define (test x y) 
  (if (= x 0) 
      0 
      y))

(test 0 (p))

;;; Applicative-order
; (test 0 p) becomes...
; (test 0 p) Why?
; We substitute in for p the value of p, which is p
; Thus, we never halt and infinitely recurse...

;;; Normal order
; (test 0 p) becomes...
(if (= 0 0)
    0
    p)
; which simplifies to
0
