(define (sum-1-to-100)
  (define (local-sum a b)
    (if (> a b)
        0
        (+ a
           (local-sum (+ a 1) b))))
  (local-sum 0 100))

