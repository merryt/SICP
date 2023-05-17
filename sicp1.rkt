#lang sicp


(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))


(norm (test 0 (p)))