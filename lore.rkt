#lang at-exp racket

(require fire-particles/main
	 website-js)

(provide name
         description
         runes
         )

;Each rune has lore... (Could pop it up in game when you collect one)
;The whole mod has lore... (Combines all into a cohesive story)

(define (name)
  "Illusions of Flame"
  )

(define (description)
  @md{
  The @b{Illusions of Flame} Rune Collection was crafted by @b{Firebeard the Great} in the early days of the @b{Dark Invasion.}  They were instrumental in turning the tide, at least for a while.

  The Collection was thought to be lost for many years.  Recently, however, I (@b{Stephen the Scrivener}) stumbled across @b{Firebeard}'s old tomes and have been working diligently to reconstruct the original Runes. 

  These are my field notes.
  })

(define (runes)
  (list
    @md{
    ## Flames Rune

    @(flames-rune)}

    @md{
    ## Fire Beam Rune

    @(fire-beam-rune)}

    @md{ 
    ## Explosion Rune

    @(explosion-rune)}

    )
  )

#;
(module+ main
	 (render #:to "out" 
		 (list
		   (bootstrap-files)
		   (lore))))
