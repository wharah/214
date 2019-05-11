;;;; Kiwi.clj provides a Kiwi "class".
;;;; 
;;;; By: Sarah Whitten
;;;; Date: April 20, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'WalkingBird' (to be used as superclass) 
(load "WalkingBird")

;; define 'Kiwi' as 'subclass' of WalkingBird
(defrecord Kiwi [^WalkingBird name] )

;;; constructors
;;; - default: takes no arguments
;;;   Postcondition: name is initialized to a default value
;;; - explicit: takes one parameter
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Kiwi
  ([]                (->Kiwi "Ann Onymous"))
  ([^String itsName] (->Kiwi itsName))
)

;;; method to retrieve a Kiwi's class
;;; Receive: this, a Kiwi object.
;;; Return: "Kiwi"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass Kiwi [ _ ]
  "Kiwi"
)

;;; method to retrieve a Kiwi's call
;;; Receive: this, a Kiwi object.
;;; Return: "Quack!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getCall Kiwi [ _ ]
  "Reeee!"
)

; (defmethod getMovement Kiwi [ _ ]
; 		"walked by"
; )

