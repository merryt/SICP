;#lang sicp
#lang r5rs

(define (two-sum nums target)
  (cond ((null? nums) #f)
        ((easyfind (cdr nums) (- target (car nums))) (cons (car nums) (easyfind (cdr nums) (- target (car nums)))))
        (else (two-sum (cdr nums) target))))


(define (easyfind lst value )
    (cond ((null? lst) #f)
         ((= value (car lst)) value)
         (else (easyfind (cdr lst) value))))
 

(display (two-sum '(2 7 11 15) 18))
