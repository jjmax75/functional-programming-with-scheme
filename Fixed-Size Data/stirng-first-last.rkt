;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname stirng-first-last) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; function definition
(define (string-first string)
  (cond [(> (string-length string) 0) (string-ith string 0)]
        [else "string must have some characters"]))

(define (string-last string)
  (cond [(> (string-length string) 0)
         (string-ith string (- (string-length string) 1))]
        [else "string must have some characters"]))

; function application
(string-first "racket")
(string-first "")

(string-last "racket")
(string-last "")
