(define codes  (list '( "a" "b" "c")  '("a" "b" "c")  ))

(define append
  (lambda (l1 l2)
    (if (null? l1)
      l2
      (cons (car l1) (append (cdr l1) l2)))))

(define (convert x) (list x))

(define (insert code A) 
	(  
		list   (append (car code ) (convert A ))    (append (car(cdr code)) (convert A ) ) 
	)
)


(define (matchfind code X)
	( 
		if ( eqv? (convert X) (car(car code)) )  
			(if   (null? (cdr code))   (car codes)   (cadr(cadr code)))  )
			(matchfind  (cons (cdr(car code))  (cdr(cdr code)) )    (convert X)  )
		
	)
)


(define  (encode code msg)
	( (if (null? msg) ()
		( cons  (matchfind code (car msg))  (encode code (cdr(msg))) ) ) ) 
)
	
