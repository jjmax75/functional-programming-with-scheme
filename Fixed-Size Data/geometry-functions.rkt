;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname geometry-functions) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; function definition
(define (cube-volume length)
  (expt length 3))

(define (cube-surface length)
  (* (expt length 2) 6))

; function application
(cube-volume 10)
(cube-surface 10)