;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname string-operations) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; helper functions
(define (get-start str index) (substring str 0 index))
(define (get-end str index) (substring str index))

; function definition
(define (string-join string1 string2)
  (string-append string1 "_" string2))

(define (string-insert str i)
  ; covers case where its an empty string and i needs to be 0
  (cond [(and (>= i 0) (or (< i (string-length str))
                           (and (= (string-length str) 0) (= i 0))))
         (string-append (get-start str i) "_" (get-end str i))]
        [else "position must be within length of string"]))

(define (string-delete str i)
  (cond [(and (> i 0) (< i (string-length str)))
         (string-append (get-start str (- i 1)) (get-end str i))]
        [(= (string-length str) 0) str]
        [else "position must be within length of string"]))

; function application
(string-join "spare" "me")

(string-insert "racket" 3)
(string-insert "racket" 9)
(string-insert "" 0)
(string-insert "" 9)

(string-delete "racket" 3)
(string-delete "racket" 9)
(string-delete "" 0)