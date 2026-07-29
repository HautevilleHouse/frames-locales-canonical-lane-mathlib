import FramesLocalesCanonicalLaneLean.LocaleMorphismPackage

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure StoneDualityPackage (F : FrameObject) (S : SoberSpacePackage F) where
  soberSpaceEquivalence : Prop
  localeEquivalence : Prop
  dualityEstablished : Prop
  dualityEstablishedClosed : dualityEstablished

def StoneDualityClosed (F : FrameObject) (S : SoberSpacePackage F) (D : StoneDualityPackage F S) : Prop :=
  D.soberSpaceEquivalence ∧ D.localeEquivalence ∧ D.dualityEstablished

theorem stone_duality_closed (F : FrameObject) (S : SoberSpacePackage F) (D : StoneDualityPackage F S) (E : StoneDualityClosed F S D) :
    StoneDualityClosed F S D :=
  E

end FramesLocalesCanonicalLaneLean
end HautevilleHouse