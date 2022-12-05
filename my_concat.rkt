#lang Racket

(define (my-concat l1 l2) (
    if (empty? l1)
    l2
    (cons (car l1) (my-concat (cdr l1) l2))
))

;;--- TESTCASES ---;;

(my-concat '(1 2 3 4) '(5 6 7))
; (1 2 3 4 5 6 7)
(my-concat '(1 2 3 4) '())
; (1 2 3 4)
(my-concat '() '(5 6 7))
; (5 6 7)