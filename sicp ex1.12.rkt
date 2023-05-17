#lang sicp

(define (pascal row column)
  (if (or (= column 1) (= row column))
      1
      (+ (pascal (- row 1)(- column 1)) (pascal (- row 1) column))))
          

(pascal 6 3)