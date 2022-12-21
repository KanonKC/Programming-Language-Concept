#lang Racket

(define (my-last lst) (
    if (empty? (cdr lst))
    (car lst)
    (my-last (cdr lst))
))

;;--- TESTCASES ---;;

(my-last '(1 2 3 4 5))
; 5
(my-last '(1 (2 3)))
; (2 3)
(my-last '())
; mcdr: contract violation, expected: mpair?, given: ()