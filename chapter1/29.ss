(define (simpson f a b n)
    (define h (/ (- b a) n))
    (define (term k)
        (define y (f (+ a (* k h))))
        (cond ((or (= k 0) (= k n)) y)
              ((even? k) (* 2 y))
              (else (* 4 y))))
    (* (/ h 3) (sum term 0 inc n)))

(define (cube x) (* x x x))
(define (inc x) (+ x 1))
(define (sum  term a next b)
    (if (> a b)
        0
        (+ (term a)
            (sum term (next a) next b))))

(simpson cube 0.0 1.0 100)
(simpson cube 0.0 1.0 1000)
