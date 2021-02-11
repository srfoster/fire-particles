#lang codespells

(require fire-particles/mod-info)
(require 2htdp/image)

(define-classic-rune (flames)
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/1519956-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Flames"))

(define-classic-rune (fire-beam)
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/898064-200.png")
  (spawn-mod-blueprint pak-folder mod-name "FireBeam"))

(define-classic-rune (fire-storm)
  #:background "red"
  #:foreground (bitmap/url "https://static.thenounproject.com/png/26013-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Firestorm"))

(define-classic-rune (explosion)
  #:background "red"
  #:foreground
  (bitmap/url  "https://static.thenounproject.com/png/2049313-200.png")
  (spawn-mod-blueprint pak-folder mod-name "Explosion"))


(define-classic-rune-lang my-mod-lang #:eval-from main.rkt
  (flames fire-beam explosion fire-storm))

(module+ main
  (codespells-workspace ;TODO: Change this to your local workspace if different
   (build-path (current-directory) ".." ".." ".." "CodeSpellsWorkspace"))
  
  (once-upon-a-time
   #:world (cave-world)
   #:aether (demo-aether
             #:lang (my-mod-lang #:with-paren-runes? #t))))
