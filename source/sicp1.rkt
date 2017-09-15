#lang planet neil/sicp
; 1.1
; Skipping..


; 1.2
; Skipping..

; 1.3
(define one-point-three (/ (+ 5 4 (- 2 (- 3 6 (/ 4 5)))) (* 3 (- 6 2) (- 2 7))))

;1.4
; Expected to be the same as the name, neat to see that use of operator
(define (a-plus-abs-b a b) ((if (> b 0) + - ) a b))

; 1.5
(define (sum-of-squares x y) (+ (* x x) (* y y)))
(define (square-large-three x y z) (if (>= x y)
                                       (sum-of-squares x (if (>= y z) y z))
                                       (sum-of-squares y (if (>= x z) x z))))

; 1.6
; Scheme will evaluate all of the arguments of the new-if statement, causing infinite sqrt-iter calls

; 1.7
; Quick and dirty 
(define (square x) (* x x))

(define (sqrt-iter x) (sqrt-iter-impl (/ x 2.0) 0.0 x))

(define (sqrt-iter-impl guess prev x)
  (if (good-enough? guess prev)
      guess
      (sqrt-iter-impl (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev)
  (<= (abs (- guess prev)) (* guess 0.0001)))

; 1.8
(define (cbrt-iter x)
  (cbrt-iter-impl 1.0 0.0 x)) 

(define (cbrt-iter-impl guess prev x)
  (if (good-enough-cube? guess prev)
      guess 
      (cbrt-iter-impl (improve-cube guess x) guess x))) 
  
(define (improve-cube guess x) 
  (average3 (/ x (square guess)) guess guess)) 
  
(define (average3 x y z) 
  (/ (+ x y z) 3)) 
  
(define (good-enough-cube? guess prev) 
  (< (abs (- guess prev)) (abs (* prev 0.0001)))) 
  
