#lang slideshow

(define author "Martin Jirku")
(define year "2018")
; () -> pict?
; creates copyright message
(define (get-copyright) (string-append year "@" author))


; (string string) -> slide
; helper for making slides
(define (make title content [type 'default])
  (case type
    [else (make-intro title content)]))

(define (make-intro title content)
  (slide
    #:title (string-upcase title)
    (t content)))

(provide make)
