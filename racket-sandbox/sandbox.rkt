#lang br

; defining variables and functions
(define x 3)

(define y (+ x 1))

; takes the sum of the squares of a and b
(define (sum-of-squares a b)
  (+ (square a)
     (square b)))

(define (square x) (* x x))

; calling our functions
(sum-of-squares x y)

; conditionals

(= 2 2) ; should return #t

(equal? "A" "A") ; equal is more general as it can operate on strings

(not (equal? 2 3))

(exact? (sqrt 2))

; if expression contains three subexpressions
(if (> 2 5) "2 greater than 5" "2 not greater than 5")

; cond is more commonly used for conditionals
(define (abs x)
  (cond
    [(> x 0) x]
    [else    (- x)]))
(abs 5)
(abs -3)

; repeated computations are done through recursion
; problem: space proportional to n

(define (fact n)
  (cond
    [(= n 1) 1]
    [else (* n (fact (- n 1)))]))
(fact 3)
; problem of space can be solved by tail recursion
; https://stackoverflow.com/a/37010/11729821
