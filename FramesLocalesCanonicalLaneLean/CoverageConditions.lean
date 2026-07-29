import FramesLocalesCanonicalLaneLean.LocalesSheaves

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure CoverageCondition (L : LocalePackage) where
  coveringSieves : Type u
  stabilityUnderPullback : Prop
  compositionCondition : Prop
  localCharacter : Prop
  coverageClosed : stabilityUnderPullback ∧ compositionCondition ∧ localCharacter

end FramesLocalesCanonicalLaneLean
end HautevilleHouse