(define (my-filter func lst) 
    (if (null? lst) lst
        (if (func (car lst))
            (cons (car lst) (my-filter func (cdr lst)))
            (my-filter func (cdr lst)))))
    

(define (interleave s1 s2) 
    (if (null? s2) 
        (append s1)
        (if (null? s1)
            (append s2)
            (cons (car s1)
            (cons (car s2)
                  (interleave (cdr s1) (cdr s2))))
            )
      ))

(define (accumulate merger start n term)
    (if (>= n 1) 
        (accumulate merger (merger start (term n)) (- n 1) term)
        start
        ))

(define (no-repeats lst) 
    (if (null? lst) lst
    (cons (car lst)
      (no-repeats (filter (lambda (x) (not (= x (car lst)))) lst)))))

