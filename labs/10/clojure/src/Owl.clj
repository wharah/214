;;;; Owl.clj provides an Owl "class".
;;;; 
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sarah Whitten
;;;; Date: April 20, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(load "Bird")

(defrecord Owl [^Bird name] )

(defn make-Owl
  ([]                (->Owl "Ann Onymous"))
  ([^String itsName] (->Owl itsName))
)

(defmethod getClass Owl [ _ ]
		"Owl"
)

(defmethod getCall Owl [ _ ]
		"Hoo!"
)

