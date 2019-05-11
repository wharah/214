;;;; Ostrich.clj provides a Ostrich "class".
;;;; 
;;;; By: Sarah Whitten
;;;; Date: April 20, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'WalkingBird' (to be used as superclass) 
(load "WalkingBird")

;; define 'Ostrich' as 'subclass' of WalkingBird
(defrecord Ostrich [^WalkingBird name] )

;;; constructors
;;; - default: takes no arguments
;;;   Postcondition: name is initialized to a default value
;;; - explicit: takes one parameter
;;;   Receive: itsName, a String
;;;   Postcondition: name == itsName
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn make-Ostrich
  ([]                (->Ostrich "Ann Onymous"))
  ([^String itsName] (->Ostrich itsName))
)

;;; method to retrieve a Ostrich's class
;;; Receive: this, a Ostrich object.
;;; Return: "Ostrich"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getClass Ostrich [ _ ]
  "Ostrich"
)

;;; method to retrieve a Ostrich's call
;;; Receive: this, a Ostrich object.
;;; Return: "Snork!"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defmethod getCall Ostrich [ _ ]
  "Snork!"
)

; (defmethod getMovement Ostrich [ _ ]
; 		"walked by"
; )

