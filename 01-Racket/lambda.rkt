#lang Racket

(define (get-add-with x)
    (lambda (y) (+ x y)))

(get-add-with 1 2)