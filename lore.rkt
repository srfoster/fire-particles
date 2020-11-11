#lang at-exp racket

(require fire-particles
	 codespells/lore)

(define-rune-collection-lore 
  #:name "Illusions of Flame"
  #:description 
  @md{
  The @b{Illusions of Flame} Rune Collection was crafted by @b{Firebeard the Great} in the early days of the @b{Dark Invasion.}  They were instrumental in turning the tide, at least for a while.

  The Collection was thought to be lost for many years.  But recently, I -- @b{Stephen the Scrivener} -- stumbled across @b{Firebeard}'s old tomes and have been working diligently to reconstruct the original Runes. 

  These are my field notes.
  }
  #:rune-lores
  (list
    ;Put example code in these demos...
    ;   Might need to add runes from other mods.  Dynamic require their langs/runes/lores, etc.  Be able to link from a Rune to its lore page...
    (rune-lore
      #:name "Flames"
      #:rune (flames-rune)
      #:description "This rune creates a small, persistent flame"
      )
    (rune-lore
      #:name "Fire Beam"
      #:rune (fire-beam-rune)
      #:description "This rune creates a upright beam of fire"
      )
    (rune-lore
      #:name "Explosion"
      #:rune (explosion-rune)
      #:description "This rune creates a explosion lasting for just an instant."
      ))
  #:preview-image (flames-rune))

