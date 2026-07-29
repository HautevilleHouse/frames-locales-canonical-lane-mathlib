import HautevilleHouse.FramesLocalesCanonicalLaneLean.SublocaleQuotient

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SublocaleCoverPackage (A : FrameSublocalePackage) where
  coveringFamily : List (FrameSublocalePackage)
  coverCondition : Prop
  coverClosed : Prop

structure SublocaleCoverEvidence {A : FrameSublocalePackage}
    (C : SublocaleCoverPackage A) where
  coverConditionClosed : C.coverCondition
  coverClosedClosed : C.coverClosed

def SublocaleCoverClosed {A : FrameSublocalePackage}
    (C : SublocaleCoverPackage A) : Prop :=
  C.coverCondition ∧ C.coverClosed

theorem sublocale_cover_closed_from_evidence {A : FrameSublocalePackage}
    (C : SublocaleCoverPackage A) (E : SublocaleCoverEvidence C) :
    SublocaleCoverClosed C := by
  exact And.intro E.coverConditionClosed E.coverClosedClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
