;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname cinema-attendance) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; constants
(define BASE-TICKET-PRICE 5)
(define BASE-ATTENDANCE 120)
(define BASE-TICKET-PRICE-CHANGE .1)
(define BASE-ATTENDANCE-CHANGE 15)
(define FIXED-COST 180)
(define PER-ATTENDEE-COST .04)

; helper function definitions
; work out how many people attend at a particular price
(define (attendance ticket-price)
  (+ BASE-ATTENDANCE
     (* (/ (- BASE-TICKET-PRICE ticket-price) BASE-TICKET-PRICE-CHANGE)
        BASE-ATTENDANCE-CHANGE)))

; work out the revenue for this attendance
(define (revenue ticket-price)
  (* (attendance ticket-price) ticket-price))

; work out the cost for this attendance
(define (cost ticket-price)
  (+ FIXED-COST (* (attendance ticket-price) PER-ATTENDEE-COST)))

; main function definition
(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

; function application
(profit 1)
(profit 2)
(profit 3)
(profit 4)
(profit 5)