#lang sicp


(define (new-cons x y)
  (lambda (m) (m x y)))

(define (new-car z)
  (z (lambda (p q) p)))

(define (new-cdr z)
  (z (lambda (p q) q)))


(define zero (lambda () (lambda (x) x)))

(define (add-1 n)
  (lambda (f) (lambda (x) (f ((n f) x)))))