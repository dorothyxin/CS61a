(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ordered? s) 
    (if (or (null? (cdr s)) (null? s))
        #t
        (if (> (car s)  (car (cdr s)))
            #f
            (ordered? (cdr s))
            )
        )
    )       

(define (square x) (* x x))

(define (pow base exp) 
    (cond 
        ((= exp 0) 1)
        ((= base 1) 1)
        ((odd? exp) (* base (square (pow base (/ (- exp 1) 2)))))
        (else (square (pow base (/ exp 2))))))
