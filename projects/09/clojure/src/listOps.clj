;; listOps.clj is a Clojure "module" for list operations.
;;
;; Completed by: Sarah Whitten
;; Date: April 16, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; maxOf2() finds the maximum of two values.  
;; Receive: val1, val2, two values.  
;; PRE: val1 and val2 can be compared using >.
;; Return: the maximum of val1 and val2. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn maxOf2 [val1 val2]
  (if (> val1 val2)      ; if val1 > val2
    val1                 ;   return val1
    val2                 ; else return val2
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; listMax() finds the maximum value in a list.
;; Receive: aList, a list of values.    
;; PRE: aList is a list 
;;      values in aList can be compared using >.
;; Return: the maximum value in aList.         
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn listMax [aList]
		(if (list? aList)
  		(let [ firstVal (first aList) ]
  				(if (= (count aList) 0)
  						"nonexistent!"
  						(if (= (count aList) 1)
										firstVal
										(maxOf2 firstVal (listMax (rest aList)))
								)
  				)
		  )
				nil
		)
)

(defn search2 [aList aValue iteration]
		(let [ firstVal (first aList) ]
  		(if (= (count aList) 0)
  				-1
  				(if (= firstVal aValue)
  						iteration
  						(search2 (rest aList) aValue (+ iteration 1))
  				)
  		)
  )
)

(defn search [aList aValue]
		(if (list? aList)
				(search2 aList aValue 0)
		)
)
