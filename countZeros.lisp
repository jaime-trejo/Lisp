;this function is meant to count the zeroes in a given list of numbers
; example: (count-zeros  '(4 0 7 6 0 9)) ->2

(defun count-zeroes (lis)
  (cond
   ((null lis) 0)
   ((equal '0 (car lis)) (+ 1 (count-zeroes(cdr lis))))
   ((count-zeroes (cdr lis)))))
