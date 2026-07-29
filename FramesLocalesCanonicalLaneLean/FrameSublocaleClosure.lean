import HautevilleHouse.FramesLocalesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameSublocalePackage where
  carrierFrame : Type u
  frameStructure : Type v
  sublocaleCondition : Prop
  meetsClosure : Prop
  joinsClosure : Prop

structure FrameSublocaleEvidence (P : FrameSublocalePackage) where
  sublocaleConditionClosed : P.sublocaleCondition
  meetsClosureClosed : P.meetsClosure
  joinsClosureClosed : P.joinsClosure

def FrameSublocaleClosed (P : FrameSublocalePackage) : Prop :=
  P.sublocaleCondition ∧ P.meetsClosure ∧ P.joinsClosure

theorem frame_sublocale_closed_from_evidence (P : FrameSublocalePackage)
    (E : FrameSublocaleEvidence P) : FrameSublocaleClosed P := by
  exact And.intro E.sublocaleConditionClosed
    (And.intro E.meetsClosureClosed E.joinsClosureClosed)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
