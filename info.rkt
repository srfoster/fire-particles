#lang info
(define collection "fire-particles")
(define deps '("base"))
(define build-deps '("scribble-lib" "racket-doc" "rackunit-lib"))
(define scribblings '(("scribblings/fire-particles.scrbl" ())))
(define pkg-desc "Description Here")
(define version "0.0")
(define pkg-authors '(Administrator))

;These are redundant, combine!
(define release-url "https://codespells-org.s3.amazonaws.com/ModBuilds/fire-particles/0.0/BuildUnreal.zip")
(define release-s3-bucket "codespells-org/ModBuilds/fire-particles/0.0/BuildUnreal.zip")