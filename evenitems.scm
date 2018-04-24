#lang scheme


(define (evenitems a)
  (if (null? a)
    '()
    (if (= (length a) 1)
      (list(car a))
      (cons (car a) (evenitems (cdr(cdr  a)))))))
