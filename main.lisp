(defun palindrome-p (n)
  (cond ((< n 10))
        ((eq (take-left n) (take-right n))
         (palindrome-p (trim-left (trim-right n))))))
 
(defun take-right (n)
  (rem n 10))
 
(defun take-left (n)
  (if (< n 10) n (take-left (truncate n 10))))
 
(defun trim-left (n &optional (z n) (m 0))
  (if (< n 10)
      (rem z (expt 10 m))
      (trim-left (truncate n 10) z (1+ m))))
 
(defun trim-right (n)
  (truncate n 10))

(print (palindrome-p 12321))
