;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname draw-boat) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
; constants
(define SCALE 1)
(define WIDTH 400)
(define HEIGHT 200)
(define SCALED-HEIGHT (* HEIGHT SCALE))
(define SCALED-WIDTH (* WIDTH SCALE))
(define HORIZONTAL-CENTRE (/ SCALED-WIDTH 2))
(define MY-SCENE (empty-scene SCALED-WIDTH SCALED-HEIGHT))

; program elements
(define SAIL (triangle (/ SCALED-HEIGHT 2) "outline" "black"))
(define MAST
  (rectangle (/ SCALED-WIDTH 25) (/ SCALED-HEIGHT 10) "solid" "brown"))
(define HULL (rectangle (/ SCALED-WIDTH 2) (/ SCALED-HEIGHT 4) "solid" "red"))

; program to draw a boat
(place-images
 (list HULL MAST SAIL)
 (list (make-posn HORIZONTAL-CENTRE (- SCALED-HEIGHT (/ (image-height HULL) 2)))
       (make-posn HORIZONTAL-CENTRE
                  (- SCALED-HEIGHT (image-height HULL) (/ (image-height MAST) 2)))
       (make-posn HORIZONTAL-CENTRE
                  (- SCALED-HEIGHT (image-height HULL) (image-height MAST)
                     (/ (image-height SAIL) 2))))
       MY-SCENE)
