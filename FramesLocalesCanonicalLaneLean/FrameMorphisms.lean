import FramesLocalesCanonicalLaneLean.LocalesSheaves

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameMorphism (L1 L2 : LocalePackage) where
  frameHomomorphism : L1.frame → L2.frame
  preservesFiniteMeets : Prop
  preservesArbitraryJoins : Prop
  correspondingLocaleMap : L1.correspondingLocale → L2.correspondingLocale
  continuity : Prop
  morphismClosed : preservesFiniteMeets ∧ preservesArbitraryJoins ∧ continuity

end FramesLocalesCanonicalLaneLean
end HautevilleHouse