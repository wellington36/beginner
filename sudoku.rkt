#lang racket

(define a11 1)
(define a12 2)
(define a13 3)
(define a14 0)
(define a15 0)

(define a21 43)
(define a22 3)
(define a23 0)

(define a31 4)
(define a32 0)
(define a33 9)

(define lst1 (list a11 a12 a13 a14 a15))
(define lst2 (list a21 a22 a23))
(define lst3 (list a31 a32 a33))

(define lstb (list lst1 lst2 lst2))

(define (lz l i)
  (if (null? (fz l i))
      null
      (cons (fz l i) (lz l (+ 1 (fz l i))))))


(define (fz l i) (if (>= i (length l))
                     null
                     (if (= (list-ref l i) 0)
                        i
                        (fz l (+ i 1)))))

(define sud
  '((6 0 0 0 0 0 5 3 0)
    (0 0 0 0 0 2 7 0 0)
    (5 0 7 0 9 6 0 1 8)
    (0 0 6 0 0 1 0 8 0)
    (0 9 8 0 0 0 0 0 0)
    (0 0 0 0 2 0 0 0 0)
    (0 0 0 0 0 0 9 0 0)
    (0 0 0 2 0 0 0 4 3)
    (3 1 0 0 0 9 0 6 2)))

(define (col sud n)
  (map (lambda (l) (list-ref l n)) sud))
