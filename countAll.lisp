; this function will return the count of all symbols located in the list
; example: (count-all  '(A (B C) D E) ) ->5
; example:(count-all  '((A B C) D (E F G) H I) ) ->9

(defun count-all (lis)
   (if (null lis)
       0
   (if (listp (car lis))
      (+(count-all (car lis)) (count-all(cdr lis)))
   (if (not (numberp (car lis)))
       (+ 1 (count-all(cdr lis)))
   (+ 1 (count-all (cdr lis)))))))
