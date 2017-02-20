; this function takes 2 arguments, an atom and a list, and returns the list with all instances of the atom removed.
; example: (remove ‘a ‘(a b (a c) d)) -> (b (c) d)

(defun removeFunction (atm lis)
   (if(null lis)
      '()
   (if(listp (car lis))
      (cons(removeFunction atm (car lis))(removeFunction atm (cdr lis)))
   (if(equal atm (car lis))
      (removeFunction atm (cdr lis))
   (cons(car lis)(removeFunction  atm (cdr lis)))))))
