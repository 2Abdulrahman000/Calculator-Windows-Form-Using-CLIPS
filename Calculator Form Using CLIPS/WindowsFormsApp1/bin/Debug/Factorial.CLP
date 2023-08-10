(deffunction factorial(?v)
   (if (= ?v 0) then 1
    else
       (* ?v (factorial (- ?v 1)))
    )
)
