(defun count-atoms (lst)
  (cond ((null lst) 0)
        ((atom lst) 1)
        (t (+ (count-atoms (first lst))
              (count-atoms (rest lst))))))
