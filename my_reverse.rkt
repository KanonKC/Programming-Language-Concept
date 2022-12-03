#lang Racket

(define (my-append lst n) (
    if (empty? lst)
    (cons n '())
    (cons (car lst) (my-append (cdr lst) n))
))

(define (my-reverse lst) (
    if (empty? lst)
    '()
    (my-append (my-reverse (cdr lst)) (car lst))
))

;;--- TESTCASES ---;;

(my-reverse '())
; ()

(my-reverse '(1 2 3))
; (3 2 1)

(my-reverse '(1 (2 3)))
; ((2 3) 1)