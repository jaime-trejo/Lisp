;this function is meant to take a list with nested sublists and return a new list w/o sublists
;example: (simpler-list ‘((A B) C D (E F G)))-> (A B C D E F G)


(defun simpler-list (lis)
  (if (null lis)
   '()
   (if (listp (car lis))
      (append (car lis)(simpler-list(cdr lis)))
      (cons (car lis)(simpler-list(cdr lis)))
      )
)
)
