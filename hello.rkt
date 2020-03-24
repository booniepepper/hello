#lang racket

(define args
  (current-command-line-arguments))

(define name
  (if (> (vector-length args) 0)
    (vector-ref args 0)
    "world"))

(printf "Hello ~a!\n" name)

