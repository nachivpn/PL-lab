(define (makepair key value) 
	(cons key value)
)


(define (maketable) 
	(list (makepair '_ '_)) 
) 

(define (lookup table key)
	(if (null? table) #f
		(if (eqv? (car (car table) )  key ) (cdr (car table))
			(lookup (cdr table) key)
		)
	)
)

(define (editvalue table key value )
	(if (null? table) #f
		(if (eqv? (car (car table) )  key ) (begin (set-cdr! (car table) value) (car table))
			(editvalue (cdr table) key value)
		)
	)
)

(define (insert table key value )
	(if (eqv? (car (car table) ) '_ ) (begin (set-car! (car table) key) (set-cdr! (car table) value) table)
		(if (eq? (lookup table key) #f) (begin (set! table (append table (list (makepair key value)))) table)
			(editvalue table key value)
		)
	)
)




