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