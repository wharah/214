;;;; WalkingBird.clj provides a WalkingBird "class".
;;;; 
;;;; By: Sarah Whitten
;;;; Date: April 23, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as superclass) 
(load "Bird")

;; Define WalkingBird as a subclass of Bird
(defrecord WalkingBird [^Bird name])

(defn make-WalkingBird
		([]                (->WalkingBird "Ann Onymous"))
		([^String itsName] (->WalkingBird itsName))
)

(defmethod getClass WalkingBird [ _ ]
  "WalkingBird"
)

(defmethod getMovement WalkingBird [ _ ]
		"walked by"
)