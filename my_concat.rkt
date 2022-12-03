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

(define (my-concat l1 l2) (
    if (empty? l2)
    l1
    (my-append (my-concat l1 (my-reverse (cdr (my-reverse l2)))) (car (my-reverse l2)))
))

;;--- TESTCASES ---;;

(my-concat '(1 2 3 4) '(5 6 7))
; (1 2 3 4 5 6 7)

(my-concat '(1 2 3 4) '())
; (1 2 3 4)

(my-concat '() '(5 6 7))
; (5 6 7)