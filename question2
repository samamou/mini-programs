-	Iterative and recursive approaches:

(defun pell-numbers (n)
    (cond
        ((= n 0) (return-from pell-numbers 0))
        ((= n 1) (return-from pell-numbers 1))
        (t (return-from pell-numbers (+ (* 2 (pell-numbers (- n 1))) (pell-numbers (- n 2)))))
    )
)

(defun pell-numbers-rec (n)
    (setq ans '())
    (loop for x from 0 to n
        do (
            setq ans (append ans (list (pell-numbers x)))
        )
    )
    (return-from pell-numbers-rec ans)
)

(defun pell-numbers-it (n)
    (setq num1 0)
    (setq num2 1)
    (setq ans-list (list num1 num2))
    (loop for x from 2 to n
        do (
            setq temp num2
        )
        (setq num2 (+ (* 2 num2) num1))
        (setq ans-list (append ans-list (list num2)))
        (setq num1 temp)
    )
    (return-from pell-numbers-it ans-list)
)

(print (pell-numbers-it 6))
(print (pell-numbers-it 12))

(print (pell-numbers-rec 6))
(print (pell-numbers-rec 12))
