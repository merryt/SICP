#lang sicp

(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))


;(fib 25)

(define (fib-lin count)
  
(define (fib-lin-inner a b count)
  (if (= count 0)
      b
      (fib-lin-inner (+ a b) a (- count 1))))
  (fib-lin-inner 1 0 count))

;(fib-lin 25)

'--------
; This logic feels janky,10 is 4, but I can only think of 3. 10 pennies, 1 nickle 5 pennies 1 dime. It is allowing you do to 1 nickle 5 pennies and 5 pennies 1 nickled. If we are allowing that I think we should allow
; I don't think I understand how to create recursive functions outside of the most basic situations, and when I create recursive solutions I can't debug them.


(define (count-change amount)
  (define (cc amount kinds-of-coins)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= kinds-of-coins 0)) 0)
          (else (+ (cc amount (- kinds-of-coins 1))
                   (cc (- amount (first-denomination kinds-of-coins))
                       kinds-of-coins )))))
  (define (first-denomination kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))
  (cc amount 5))

(count-change 23)



(define (f n)
  (if (< n 3) n 
     (+ (f (- n 1))
        (* 2  (f (- n 2)))
        (* 3  (f (- n 3)))
     )))

(f 3)
(f 4)
