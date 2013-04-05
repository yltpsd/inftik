; This is a implementation of general-sum 

(define (general-sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (general-sum term (next a) next b))))

; Use Genenral-sum building sum-1-to-100
(define (sum-1-to-100)
  (general-sum (lambda (x) x)
               1
               (lambda (x) (+ x 1))
               100))

; Use Genenral-Sum building Pi-Sum
(define (pi-sum n)
  (general-sum (lambda (x) (- (/ 1.0 x)
                               (/ 1.0 (+ x 2))))
               1
               (lambda (x) (+ x 4))
               n))
