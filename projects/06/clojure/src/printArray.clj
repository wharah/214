;; print.clj "test-drives" function printArray().
;;
;; Output: the contents of the user-created array.
;;
;; Usage: clojure -m print
;;
;; Created by: Sarah Whitten
;; Date: March 11, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns printArray)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; printArray() displays the array values.       
;; Receive: anArray, a vector; size, an integer.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; I tested this separately from the readArray() function
;; and it works fine. I just can't figure out how to modify
;; the array and spit it back out to be printed
(defn printArray [anArray size]
	(println "Here are the contents of your array:")
	(loop [i 0]
		(when (< i size)
			(println (get anArray i))
			(recur (+ i 1))
		)
	)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; readArray() assigns values to the array     
;; Receive: size, an integer
;; Return: anArray, a vector containing the correct values
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; WHY WON'T IT WORK
(defn readArray [size]
	(println "Enter the contents of your array:")
	(let
		[ anArray (vector) ]
		(loop [i 0]
			(when (< i size)
				(concat anArray (double (read)))
				(recur (+ i 1))
			)
		)
		anArray
	)
)

(defn -main []
	(println "Enter the size of your array:")
	(let
		[ size (int (read))
		  ourArray (readArray size)
		  ; testArray [0.0, 1.0]
		]
		; (println ourArray)
		; (println testArray)
		; (printArray testArray size)
		(printArray ourArray size)
	)
)
