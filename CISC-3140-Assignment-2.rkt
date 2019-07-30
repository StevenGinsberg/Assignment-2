 
(define lst'(1 3 8 2 7 1 9 3 5 3 6 8 0 9 8 7 ))
 

 
  (define compute (lambda (x)
               (if(= 1 (length x))                                      
                  (car x)           ;determines if there is one memeber in the list
               (if(even? (length x)) ; determing if it is odd or even based on length                                   
                  (if(>= (car x) 5)    ;   if even will determine if it is greater than 5                                 
                     (+ (- (* 2 (car x)) 9) (compute (cdr x))) ;for values greater than 9 subtract 2
                     (+ (* 2 (car x)) (compute (cdr x)))) 
                  (+ (car x) (compute (cdr x)))             
                  ))))
       
 ;; computes the final step of luhn test    
  (if(= (modulo (compute lst) 10) 0)                 
                  #t 
                  #f )
     ;; displays message if the test is true or false             )   
  (if(= (modulo (compute lst) 10) 0)                 
                  "valid credit card number"
                   "invalid credit  card number"
                  ) 
