;this function is meant to take non-negative integers n and return a list of n elements
; example: (make-list 7  ‘A) -> (A  A  A  A  A  A  A)

(defun make-listing (num a)
  (if(<= num 0)
   '()
   (cons 'a (make-listing(- num 1) a))
   )
)
