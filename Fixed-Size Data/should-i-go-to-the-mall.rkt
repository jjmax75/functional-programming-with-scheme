;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname should-i-go-to-the-mall) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; constants
(define SUNNY #true)
(define FRIDAY #false)

; program
(define (should-i-go-to-the-mall sunny friday)
  (or (not sunny) friday))

; test
(should-i-go-to-the-mall SUNNY FRIDAY)