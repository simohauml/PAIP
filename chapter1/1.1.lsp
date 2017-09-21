(defparameter *titles*
  '(Mr Mrs Miss Ms S i r Madam Dr Admiral Major General)
  "A list of titles that can appear at the start of a name.")

(defparameter *john*
  '(Mr Major John W Wick))

(defparameter *names*
  '((Mr Major John W Wick)
    (Mr Joe Rich)
    (Mary Jane)
    (Miss Lu Coco)))

(defun last-name (name)
  (if (member (first name) *titles*)
      (last-name (rest name))
      (first (last name))))

(trace last-name)
