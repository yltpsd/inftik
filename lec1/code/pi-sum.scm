; This is a normal implementation of pi-sum
; Implementation by general-sum in file gen-sum.scm
(define (pi-sum b)
  (define (lc-pi-sum x y)
    (if (> x y)
        0
        (+ (- (/ 1.0 x)
              (/ 1.0 (+ x 2)))
           (lc-pi-sum (+ x 4) y))))
  (* 4 (lc-pi-sum 1 b)))
