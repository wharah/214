;;;; nameTester.clj creates and tests a clojure Name type.
;;;;
;;;; Output: results of testing Name functions.
;;;;
;;;; Usage: clojure -m nameTester
;;;;
;;;; Begun by: Dr. Adams, CS 214 at Calvin College.
;;;; Completed by: Sarah Whitten
;;;; Date: April 2, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns nameTester)   ; program name

;;; define a Clojure record named Name 
;;; (which compiles to a Java class).

(defrecord Name [ firstName middleName lastName ])

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; make-Name constructs a Name from three strings. 
;;; Receive: firstN, middleN and lastN, three strings.
;;; Return: the Name (firstN middleN lastN). 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn make-Name [first middle last]
	 (->Name first middle last)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFirst() extracts the first name of a Name object.
;;; Receive: aName, a Name.
;;; Return: the firstName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn getFirst [^Name aName]
		(:firstName aName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getMiddle() extracts the middle name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the middleName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getMiddle [^Name aName]
		(:middleName aName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getLast() extracts the last name of a name object.
;;; Receive: aName, a Name. 
;;; Return: the lastName string in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn getLast [^Name aName]
		(:lastName aName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; The following three methods will change the current name
;;; Receive: aName - a Name; firstName, middleName, or 
;;;										lastName - a String
;;; Return: a new Name with the different name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn setFirst [^Name aName firstName]
		(->Name firstName (:middleName aName) (:lastName aName))
)

(defn setMiddle [^Name aName middleName]
		(->Name (:firstName aName) middleName (:lastName aName))
)

(defn setLast [^Name aName lastName]
		(->Name (:firstName aName) (:middleName aName) lastName)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; lfmi() returns a string of: Last, First MI.
;;; Receive: aName, a Name
;;; Return: lastName, firstName, and first letter of middleName
;;;         separated by spaces and proper punctuation
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn lfmi [^Name aName]
  (str (getLast aName) ", " (getFirst aName) " " (subs (getMiddle aName) 0 1) ".")
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; getFullName() returns a full name in F-M-L order. 
;;; Receive: aName, a Name. 
;;; Return: firstName, middleName, lastName,
;;;           separated by spaces. 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn toString [^Name aName]
  (str (getFirst aName) " " (getMiddle aName) " " (getLast aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; printName() displays a name object.
;;; Receive: aName, a Name.
;;; Output: the strings in aName.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 
(defn printName [^Name aName]
  (print (toString aName))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; readName() taken ipnut from the user and creates a Name
;;; Receive: input from user
;;; Return: aName, a Name
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn readName [^Name aName]
		(->Name (read) (read) (read))
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A simple driver to test our Name functions. 
;;; Output: the result of testing our Name functions.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
		(println "Enter your name:")
  (let
    [                                          ; 3 ways to construct an object:
     name1 (make-Name "John" "Paul" "Jones")  ; -using our "make-" constructor
     name2 (->Name "Jane" "Penelope" "Jones") ; -invoking constructor directly
                                               ; -mapping field-names to values
     name3 (map->Name {:lastName "Jones" :firstName "Jinx" :middleName "Joy"})

     ; test the mutator methods
     name4 (make-Name "Sarah" "Michelle" "Whitten")
     name5 (setFirst name4 "Theresa")
     name6 (setMiddle name5 "Lynn")
     name7 (setLast name6 "Lavey")
     name8 (readName name7)
    ]
    ;; ----- SECTION 1 -----
   ; (println)
   ; (print name1) (println)
   ; (assert (= (getFirst name1) "John") "getFirst(1) failed")
   ; (assert (= (getMiddle name1) "Paul") "getMiddle(1) failed")
   ; (assert (= (getLast name1) "Jones") "getLast(1) failed")
   ; (assert (= (toString name1) "John Paul Jones") "toString(1) failed")
   ; (printName name1) (println)
   ;  ;; ----- SECTION 2 -----
   ; (println)
   ; (print name2) (println)
   ; (assert (= (getFirst name2) "Jane") "getFirst(2) failed")
   ; (assert (= (getMiddle name2) "Penelope") "getMiddle(2) failed")
   ; (assert (= (getLast name2) "Jones") "getLast(2) failed")
   ; (assert (= (toString name2) "Jane Penelope Jones") "toString(2) failed")
   ; (printName name2) (println)
   ;  ;; ----- SECTION 3 -----
   ; (println)
   ; (print name3) (println)
   ; (assert (= (getFirst name3) "Jinx") "getFirst(3) failed")
   ; (assert (= (getMiddle name3) "Joy") "getMiddle(3) failed")
   ; (assert (= (getLast name3) "Jones") "getLast(3) failed")
   ; (assert (= (toString name3) "Jinx Joy Jones") "toString(3) failed")
   ; (printName name3) (println)

   ; test the mutator methods
   (assert (= (getFirst name5) "Theresa") "setFirst failed")
   (assert (= (getMiddle name6) "Lynn") "setMiddle failed")
   (assert (= (getLast name7) "Lavey") "setLast failed")

   ; test lfmi()
   (assert (= (lfmi name7) "Lavey, Theresa L.") "lfmi failed")

   (printName name8) (println)

    (println "\nAll tests passed!\n")
  )
)

