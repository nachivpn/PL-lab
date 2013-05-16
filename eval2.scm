(define P (list '(1,10) '(2,20) '(3,30) '(4,40)))
(define Q (list 5 3 1 9))
;to check if an integer exists in a given list
; x is the integer and B is the list

(define (checklist x B)
(	cond ((null? B) 0)
		((= x (car B)) 1) 
		(else (checklist x (cdr B)))))
;count number of elements in list
		
(define (length lst)
  (if (null? lst)
      0
      (+ (length (cdr lst)) 1)))
; to append an integer to the list we use predefined "append" function which appends 2 lists

(define L3 (make-list (length Q)))

(define (seconds-element L1 L2)
(	(cond((null? L1) L3)
		((= (checklist (caar L1) (L2) ) 1)  (append (L3 list(cdar(L1)))))
	)	
	(cond ((null? L1) L3)
		(else (seconds-element (cdr L1) (L2)))
)))


		

