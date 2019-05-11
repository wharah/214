;;;; FlyingBird.clj provides a FlyingBird "class".
;;;; 
;;;; By: Sarah Whitten
;;;; Date: April 23, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; bring in 'Bird' (to be used as superclass) 
(load "Bird")

;; Define FlyingBird as a subclass of Bird
(defrecord FlyingBird [^Bird name])

(defn make-FlyingBird
		([]                (->FlyingBird "Ann Onymous"))
		([^String itsName] (->FlyingBird itsName))
)

(defmethod getClass FlyingBird [ _ ]
  "FlyingBird"
)

(defmethod getMovement FlyingBird [ _ ]
		"flew by"
)

