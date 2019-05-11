;; birds.clj illustrates inheritance and polymorphism in Clojure.
;;
;; Output: the results of testing the Bird functions.
;;
;; Usage: clojure -m birds
;;
;; Begun by: Prof. Adams, for CS 214 Lab 10 at Calvin College.
;; Completed by: Sarah Whitten
;; Date: April 20, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns birds
  (:require
      [Bird]
     	[FlyingBird]
     	[WalkingBird]
     	[Duck]
     	[Goose]
     	[Owl]
     	[Penguin]
     	[Ostrich]
     	[Kiwi]
  )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main tests the classes in the Bird hierarchy.
;;; Output: the results of testing the Bird functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
  (let
    [                                ;; Birds
     bird0 (make-Bird)              ; default Bird constructor
     bird1 (make-Bird "Hawkeye")    ; explicit Bird constructor
                                     ;; Ducks
     bird2 (make-Duck)              ; default Duck constructor
     bird3 (make-Duck  "Donald")    ; explicit Duck constructor
                                     ;; Geese
     bird4 (make-Goose)             ; default Goose constructor
     bird5 (make-Goose "Mother")    ; explicit Goose constructor
                                     ;; Owls
     bird6 (make-Owl)               ; default Owl constructor
     bird7 (make-Owl "Woodsey")     ; explicit Owl constructor
     																																;; Penguins
     bird10 (make-Penguin)										; default Penguin constructor
     bird11 (make-Penguin "Pingu")  ; explicit Penguin constructor
     																																;; Ostriches
     bird12 (make-Ostrich)										; default Ostrich constructor
     bird13 (make-Ostrich "Orla")   ; explicit Ostrich constructor
     																																;; Kiwis
     bird14 (make-Kiwi) 												; default Kiwi constructor
     bird15 (make-Kiwi "Kellie")    ; explicit Kiwi constructor
    ]

    (println "\nWelcome to the Bird Park!\n")
   	(println (toString bird0))
   	(println (toString bird1))
    (println)
   	(println (toString bird2))
   	(println (toString bird3))
    (println)
   	(println (toString bird4))
   	(println (toString bird5))
    (println)
   	(println (toString bird6))
  	 (println (toString bird7))
    (println)
    (println (toString bird10))
   	(println (toString bird11))
    (println)
   	(println (toString bird12))
  	 (println (toString bird13))
    (println)
   	(println (toString bird14))
  	 (println (toString bird15))
    (println)
    (println "Goodbye, and come again!\n")
  )
)
 
