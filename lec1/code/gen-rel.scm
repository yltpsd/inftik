; This is a implementation of general-rel

(define (general-rel rel term a next b)
  (if (> a b)
      0
      (rel (term a)
         (general-rel rel term (next a) next b))))
         
; Use general-rel building general-sum
(define (general-sum term a next b)
  (general-sum + term (next a) next b))
