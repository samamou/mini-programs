(defun factorial (x)
    (setq ans 1)
    (loop for n from 1 to x
        do (setq ans (* ans n))
    )
    (return-from factorial ans)
)

(defun custom-cos (x n)
    (setq ans 1.0)
    (setq counter 1)
    (loop for val from 2 to n
        do (
            if (evenp val)
            (
                if (oddp counter)
                (setq ans (- ans (/ (expt x val) (factorial val))))  
                (setq ans (+ ans (/ (expt x val) (factorial val))))  
            )
            (setq counter (- counter 1))
        ) 
        (setq counter (+ counter 1))
    )
    (return-from custom-cos ans)
)

(defun custom-sin (x n)
    (setq ans (* x 1.0))
    (setq counter 1)
    (loop for val from 3 to n
        do (
            if (oddp val)
            (
                if (oddp counter)
                (setq ans (- ans (/ (expt x val) (factorial val))))  
                (setq ans (+ ans (/ (expt x val) (factorial val))))  
            )
            (setq counter (- counter 1))
        ) 
        (setq counter (+ counter 1))
    )
    (return-from custom-sin ans)
)

(defun sin-cos-comp (x n)
    (cond 
        ((not (numberp x)) (print "Please enter a number for x"))
        ((not (numberp n)) (print "Please enter a number for n"))
        ((not (integerp n)) (print "Please enter an integer for n"))
        ((evenp n) (return-from sin-cos-comp (custom-cos x n)))
        ((and (oddp n) (and (< -10 x) (> 10 x))) (return-from sin-cos-comp (custom-sin x n)))
    )
)
