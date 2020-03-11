#lang racket



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
