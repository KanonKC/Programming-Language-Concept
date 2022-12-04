#lang Racket

(define (fact n) (
    if (= n 0)
    1
    (* n (fact (- n 1)))
))

(fact 0)
; 1
(fact 3)
; 6
(fact 10)
; 3628800

;-----------------------------------------

(define (is-member? lst x) (
    if (empty? lst)
    #f
    (
        if (= (car lst) x)
        #t
        (is-member? (cdr lst) x)
    )
))

(is-member? '(1 2 3 4) 1)
; #t
(is-member? '(1 2 3 4) 20)
; #f

;-----------------------------------------

(define (my-append lst n) (
    if (empty? lst)
    (cons n '())
    (cons (car lst) (my-append (cdr lst) n))
))

(my-append '(1 2 3 4) 100)
; (1 2 3 4 100)
(my-append '() 100)
; (100)