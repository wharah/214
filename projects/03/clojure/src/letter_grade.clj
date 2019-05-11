;;;; letter_grade.clj is a driver for function yearCode.
;;;;
;;;; Input: A number grade
;;;; Output: The corresponding letter grade
;;;;
;;;; Usage: clojure -m year_codes
;;;;
;;;; Begun by: Prof. Adams, for CS 214 at Calvin College.
;;;; Completed by: Sarah Whitten
;;;; Date: February 19, 2019
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(ns letter_grade)                    ; name the program

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; letterGrade() returns the letter for a given grade.
;;; Receive: grade, a string.
;;; Return: the corresponding letter grade
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defn parse-int [s]
   (Integer. (re-find  #"\d+" s ))
)

(defn letterGrade [grade]
    (cond
        (= 10 (/ (parse-int grade) 10))       "A"
        (<= 9 (/ (parse-int grade) 10))  "A"
        (<= 8 (/ (parse-int grade) 10))  "B"
        (<= 7 (/ (parse-int grade) 10))  "C"
        (<= 6 (/ (parse-int grade) 10))  "D"
        :else                                 "F"
    )
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Function -main() test-drives our yearCode() function.
;;; Input: year: one of {freshman, sophomore, junior, or senior}.
;;; Output: the code corresponding to year.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defn -main []
 (print "\nEnter your grade: ") (flush)
 (let
    [ grade (read-line) ]
    (println (letterGrade grade))      ; display its code
 )
)