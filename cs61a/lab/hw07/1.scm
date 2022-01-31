(define (ordered? s)
  'YOUR-CODE-HERE
 (if (or (null? s) (null? (cdr s)))
  #t
  (if (<= (car s) (car (cdr s)))
   (ordered? (cdr s))
   #f))
)
(ordered? '(1 2 3 4 5))
(define (ordered? s) 
    (if (or (null? (cdr s)) (null? s))
        #t
        (if (> (car s)  (car (cdr s)))
            #f
            (ordered? (cdr s))
            )
        )
    )