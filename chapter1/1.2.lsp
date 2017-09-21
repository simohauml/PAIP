(defun power1 (n p)
  (if (= p 0)
      1
      (* n (power n (- p 1)))))

(defun power2 (n p)
  (cond ((= p 0) 1)
        ((evenp p) (* (power2 n (/ p 2)) (power2 n (/ p 2))))
        (t (* n (power2 n (- p 1))))))

(defun power3 (n p)
  (cond ((= p 0) 1)
        ((evenp p) (expt (power3 n (/ p 2)) 2))
        (t (* n (power3 n (- p 1))))))

(defun power4 (n p)
  (cond ((= p 0) 1)
        ((evenp p) (let ((temp (power n (/ p 2))))
                     (* temp temp)))
        (t * n (power4 n (- p 1)))))

(trace power4)
