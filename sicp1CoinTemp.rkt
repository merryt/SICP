#lang sicp

(define (create-change amount)
  (define (cc amount current-coin)
    (cond ((= amount 0) 1)
          ((or (< amount 0) (= current-coin 0)) 0)
          (else (+ (cc amount (- current-coin 1))
                   (cc (- amount (coins current-coin)) current-coin )))))
  
    (define (coins kinds-of-coins)
    (cond ((= kinds-of-coins 1) 1)
          ((= kinds-of-coins 2) 5)
          ((= kinds-of-coins 3) 10)
          ((= kinds-of-coins 4) 25)
          ((= kinds-of-coins 5) 50)))


  (cc amount 2))


(create-change 4)