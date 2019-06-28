;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname remove-character) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
; constants
(define str "helloworld")
(define MIN-VALUE 0)
(define MAX-VALUE (string-length str))

; functions
(define (get-start index) (substring str 0 index))

(define (get-end index) (substring str (+ index  1)))

(define (remove-character index)
  (cond
    [(and (>= index MIN-VALUE) (<= index MAX-VALUE))
     (string-append (get-start index) (get-end index))]
    [else "index is out of range"]
    ))

(remove-character 15)