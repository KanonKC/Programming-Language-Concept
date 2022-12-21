#lang Racket

(define (my-len lst) (
    if (empty? lst)
    0
    (+ 1 (my-len (cdr lst)))
))

;;--- TESTCASES ---;;

(my-len '())
; 0
(my-len '(1 2 3 4))
; 4
(my-len '(1 (2 3) () 4))
; 4
(my-len '(1 (2 3 4) () 5))
; 4