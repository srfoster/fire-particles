#lang codespells

(provide mod-name pak-folder main.rkt)

(require racket/runtime-path)

(define
  mod-name
  "FireParticles")

(define-runtime-path
  pak-folder
  "BuildUnreal/WindowsNoEditor/FireParticles/Content/Paks/")

(define-runtime-path
  main.rkt
  "main.rkt")

(setup-mod mod-name pak-folder)
