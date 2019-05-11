;;;; quadratic.clj finds the real roots of a quadratic function
;;;;
;;;; Input: a, b, and c from the quadratic equation
;;;; Output: real roots of quadratic
;;;;
;;;; Usage: clojure -m quadratic
;;;;
;;;; Completed by: Sarah Whitten
;;;; Date: March 5, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns quadratic)      ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn quadratic [a b c]
	(if (not= a 0)
		(let 
			[ det (- (* b b) (* 4 a c))]
			(if (>= det 0)
				(let
					[ sqrtDet (Math/sqrt det)
					  root1 (/ (+ (- b) sqrtDet) (* 2 a))
					  root2 (/ (- (- b) sqrtDet) (* 2 a))
					]
					(vector root1 root2)
					; true
				)
				(println "\n*** quadraticRoots(): b^2 - 4ac is negative!")
				; false
			)
		)
		(println "\n*** QuadraticRoots(): a is zero!")
		; false
	)
)

(defn -main []
	(println "Enter a, b, and c from your quadratic function:")
	(let 
		[ a (float (read))
		  b (float (read))
		  c (float (read))
		  roots (quadratic a b c)
		  root1 (get roots 0)
		  root2 (get roots 1)
		]
		; if
		(printf (str "\nThe first root is %f and" 
                    " the second root is %f\n")
                       root1 root2)
	)
)