;;;; Duck.clj provides a Duck "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sarah Whitten
;;;; Date: April 20, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as superclass) 
(load "FlyingBird")

;; define 'Duck' as 'subclass' of FlyingBird
(defrecord Duck [^FlyingBird name] )

;;; constructors
;;; - default: takes no arguments
;;;   Postcondition: name is initialized to a default value
;;; - explicit: takes one parameter
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Duck
  ([]                (->Duck "Ann Onymous"))
  ([^String itsName] (->Duck itsName))
)

;;; method to retrieve a Duck's class
;;; Receive: this, a Duck object.
;;; Return: "Duck"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass Duck [ _ ]
  "Duck"
)

;;; method to retrieve a Duck's call
;;; Receive: this, a Duck object.
;;; Return: "Quack!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getCall Duck [ _ ]
  "Quack!"
)

; (defmethod getMovement Duck [ _ ]
; 		"flew by"
; )

