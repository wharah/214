;;;; factorial.clj is a driver for function factorialOf.
;;;;
;;;; Input: Integer
;;;; Output: Factorial of given integer
;;;;
;;;; Usage: clojure -m factorial
;;;;
;;;; Auhtor: Sarah Whitten
;;;; Date: February 25, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns factorial)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; displayLogTable() recursively generates the log-table.
;;; Receive: start the first value for the table;
;;;          stop, the last  value for the table;
;;;           step, the step value for the table;
;;; Precondition: start < stop && increment > 0.
;;; Output: The table of logs from start to stop, by step.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; direct-recursive version
(defn factorialOf [base limit i]
    (if (<= i limit)
    	(factorialOf (* base i) limit (+ i 1))
    	base)
)

(defn -main []
	(println "To compute n!, enter n: ")
	(let 
		[limit (double (read))]
	(print limit) (print "! = ")
	(println (factorialOf 1 limit 1))
	)
)
