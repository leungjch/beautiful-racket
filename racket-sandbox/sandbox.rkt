#lang br
(define x 3)

(define y (+ x 1))

(define (sum-of-squares a b)
  (+ (square a)
     (square b)))

(define (square x) (* x x))

(sum-of-squares x y)