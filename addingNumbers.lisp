; This function will return the sum of all numbers at all levels
; example: (add-numbers '( 3 60 ( Huyen  Josh  5 ) 2  Carl)) -> 70

(defun adding-numbers (lis)
   (if (null lis)
       0
   (if (listp (car lis))
      (+ (adding-numbers (car lis)) (adding-numbers (cdr lis)))
   (if (not (numberp (car lis)))
       (adding-numbers(cdr lis))
   (+ (car lis) (adding-numbers (cdr lis)))))))
