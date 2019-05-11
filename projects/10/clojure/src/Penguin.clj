;;;; Penguin.clj provides a Penguin "class".
;;;; 
;;;; By: Sarah Whitten
;;;; Date: April 20, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'WalkingBird' (to be used as superclass) 
(load "WalkingBird")

;; define 'Penguin' as 'subclass' of WalkingBird
(defrecord Penguin [^WalkingBird name] )

;;; constructors
;;; - default: takes no arguments
;;;   Postcondition: name is initialized to a default value
;;; - explicit: takes one parameter
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Penguin
  ([]                (->Penguin "Ann Onymous"))
  ([^String itsName] (->Penguin itsName))
)

;;; method to retrieve a Penguin's class
;;; Receive: this, a Penguin object.
;;; Return: "Penguin"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass Penguin [ _ ]
  "Penguin"
)

;;; method to retrieve a Penguin's call
;;; Receive: this, a Penguin object.
;;; Return: "Huh-huhh!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getCall Penguin [ _ ]
  "Huh-huhh!"
)

; (defmethod getMovement Penguin [ _ ]
; 		"walked by"
; )

