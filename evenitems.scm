#lang scheme
; evenitems
; Dakota Crowder
; CSCE A331 Spring 2018
; Assignment 7 Exercise C

; evenitems
; Returns a list of all the even indexed items in the list passed as the parameter
(define (evenitems a)
  (if (null? a)
    '()
    (if (= (length a) 1)
      (list(car a))
      (cons (car a) (evenitems (cdr(cdr  a)))))))
