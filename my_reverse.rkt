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

; ฟังก์ชัน my-reverse ในการเรียกตัวเองทุกครั้ง สมาชิกใน list จะหายไปทีละ 1 ตัว ดังนั้นจะเรียกตัวเองทั้งหมด n ครั้ง 
; และในแต่ละครั้งจะมีการเรียก my-append ซึ่งจากข้อที่ 1 ทำให้ทราบว่าจะมีการทำงานทั้งหมด n ครั้ง เช่นกัน 
; ดังนั้นจะมีการทำงาน n ครั้ง ทั้งหมด n ครั้ง = n * n ครั้ง
; Time Complexity: O(n^2)