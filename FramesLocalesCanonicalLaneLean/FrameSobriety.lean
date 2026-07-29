import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameSobrietyPackage where
  soberCondition : Prop
  sobrietyEquivalentToInjective : Prop
  manyPointsCondition : Prop

structure FrameSobrietyEvidence (P : FrameSobrietyPackage) where
  soberConditionClosed : P.soberCondition
  sobrietyEquivalentToInjectiveClosed : P.sobrietyEquivalentToInjective
  manyPointsConditionClosed : P.manyPointsCondition

def FrameSobrietyClosed (P : FrameSobrietyPackage) : Prop :=
  P.soberCondition ∧ P.sobrietyEquivalentToInjective ∧ P.manyPointsCondition

theorem frame_sobriety_closed_from_evidence (P : FrameSobrietyPackage)
    (E : FrameSobrietyEvidence P) : FrameSobrietyClosed P := by
  exact And.intro E.soberConditionClosed
    (And.intro E.sobrietyEquivalentToInjectiveClosed E.manyPointsConditionClosed)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
