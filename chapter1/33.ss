(define (filter-accumulate filter combiner null-val term a next b)
    (define val (term a))
    (define curr (cond ((filter a) val)
        (else null-val)))
    (cond ((> a b) null-val)
        (else (combiner curr
            (filter-accumulate filter combiner null-val term (next a) next b)))))

(define (inc x) (+ x 1))
(define (square x) (* x x))
(define (iden x) x)

; Courtesy https://stackoverflow.com/a/13791490
(define (prime? x)
  (define (prime-helper x k)
    (cond ((= x k) #t)
          ((= (remainder x k) 0) #f)
          (else
           (prime-helper x (+ k 1)))))
  (cond ((= x 1) #f)
        ((= x 2) #t)
         (else
          (prime-helper x 2))))


; Sum of primes squared
(define (sum-primes a b) (filter-accumulate prime? + 0 square a inc b))

; Should be 38
(sum-primes 1 5)

(define (gcd a b)
    (if (= b 0)
        a
        (gcd b (remainder a b))))

(define (rel-prime? a b) (= (gcd a b) 1))

(define (rel-prime-prod n)
    (define (rel-prime-n? x) (rel-prime? x n))
    (filter-accumulate rel-prime-n? * 1 iden 1 inc n))

; Should be 189
(rel-prime-prod 10)
