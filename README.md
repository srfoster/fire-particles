fire-particles
==============
`fire-particles` is a CodeSpells mod! Learn more at https://codespells.org.

### Installation

Clone this repo

```
cd fire-particles
raco pkg install
raco codespells-install
```

Open up `main.rkt` and adjust the `codespells-workspace` accordingly. Run.

### Including this Rune Collection as a Package

`(require-mod fire-particles)`

This gives you access to fire-particles:rune-lang which you can combine into your mod's rune lang with `append-rune-langs`.

### Unreal Development

If you want to start up the Unreal project (`/Unreal`), install the following:
* FX Variety Pack: https://www.unrealengine.com/marketplace/en-US/item/963c62c38abb403aa08b575584b765d0
  * Place in: `Plugins/FireParticles/Content/FXVarietyPack`
* Beam and Laser FX 01: https://www.unrealengine.com/marketplace/en-US/item/c38172b642034455b8366f5a6a5a91f2
  * Place in: `Plugins/FireParticles/Content/BeamAndLaserFX01`
