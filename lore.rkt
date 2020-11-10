#lang at-exp racket

(require fire-particles/main
	 website-js)

(provide name
         description
         runes
	 preview-image
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
    ;Lists here are gross.  
    ;Some kind of rune info struct (along with collection info and build info)

    ;Put example code in these demos...
    ;   Might need to add runes from other mods.  Dynamic require their langs/runes/lores, etc.  Be able to link from a Rune to its lore page...
    (list
      "Flames"
      (flames-rune)
      "This rune creates a small, persistent flame"
      )
    (list
      "Fire Beam"
      (fire-beam-rune)
      "This rune creates a upright beam of fire"
      )
    (list
      "Explosion"
      (explosion-rune)
      "This rune creates a explosion lasting for just an instant."
      )))

(define (preview-image)
  (flames-rune))

