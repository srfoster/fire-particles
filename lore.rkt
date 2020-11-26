#lang at-exp racket

(require codespells/lore
         (only-in codespells append-rune-langs
                             require-mod))

(require-mod hierarchy)
(require-mod spawners)
(require-mod fire-particles)
(require-mod ice-particles)
(require-mod rocks)


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
      #:description @md{
      This rune represents a small, persistent flame.  It does not burn, but it looks like it might.  @b{Firebeard the Great} was the first to prove the @b{Dark Invaders} to be stymied by the mere illusion of fire, as well as fire itself.

      @(rune-code-example
	 (fire-particles:my-mod-lang #:with-paren-runes? #t)
	 (flames)
	 flames-demo.mp4)

      @p{This flame rune can be combined with runes from the @b{Conjurings of Rocks} collection to make flaming rocks.}

      @(rune-code-example
         (append-rune-langs
           #:name #f 
           (rocks:my-mod-lang)
           (hierarchy:my-mod-lang)
           (fire-particles:my-mod-lang #:with-paren-runes? #t))
         (parentify 
           forest-rock 
           flames)
         flames-with-rock-demo.mp4)
      }
       
      )
    (rune-lore
      #:name "Fire Beam"
      #:rune (fire-beam-rune)
      #:description @md{
      @b{Firebeard the Great} created this beam of fire to construct the illusion of cages to hold prisoners of war.  It held them, for a time. 

      @(rune-code-example
	 (fire-particles:my-mod-lang #:with-paren-runes? #t)
	 (fire-beam)
	 fire-beam-demo.mp4)
      }

      )
    (rune-lore
      #:name "Explosion"
      #:rune (explosion-rune)
      #:description @md{
      An illusion of an explosion, which @b{Firebeard the Great} employed as a stunning mechanism against the hordes.

      @(rune-code-example
	 (fire-particles:my-mod-lang #:with-paren-runes? #t)
	 (explosion)
	 explosion-demo.mp4)
      
      Who says fire and ice don't mix? Try these runes: 

      @(rune-code-example
         (append-rune-langs
           #:name #f 
           (ice-particles:my-mod-lang)
           (spawners:my-mod-lang)
           (hierarchy:my-mod-lang)
           (fire-particles:my-mod-lang #:with-paren-runes? #t))
         (parentify 
           ice-ball 
           (spawner
             explosion
             ))
         ice-explosion-spawner-demo.mp4)
      }
      ))
  #:preview-image preview.png)

