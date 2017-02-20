; this functions will return the length of the list of values givien
; example: (myLength '()) -> 0 , (myLength '(a b c)) ->3

(defun mylength (lis)
  (if (null lis)
      0
      (+ 1 (mylength (cdr lis)))
   )
 )
