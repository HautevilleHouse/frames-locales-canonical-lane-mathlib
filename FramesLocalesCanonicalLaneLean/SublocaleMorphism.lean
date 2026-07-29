import HautevilleHouse.FramesLocalesCanonicalLaneLean.FrameSublocaleClosure

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SublocaleMorphismPackage {A : FrameSublocalePackage} {B : FrameSublocalePackage} where
  carrierMap : A.carrierFrame → B.carrierFrame
  preservesMeets : Prop
  preservesJoins : Prop
  morphismClosed : Prop

structure SublocaleMorphismEvidence {A B : FrameSublocalePackage}
    (M : SublocaleMorphismPackage A B) where
  preservesMeetsClosed : M.preservesMeets
  preservesJoinsClosed : M.preservesJoins
  morphismClosedClosed : M.morphismClosed

def SublocaleMorphismClosed {A B : FrameSublocalePackage}
    (M : SublocaleMorphismPackage A B) : Prop :=
  M.preservesMeets ∧ M.preservesJoins ∧ M.morphismClosed

theorem sublocale_morphism_closed_from_evidence {A B : FrameSublocalePackage}
    (M : SublocaleMorphismPackage A B) (E : SublocaleMorphismEvidence M) :
    SublocaleMorphismClosed M := by
  exact And.intro E.preservesMeetsClosed
    (And.intro E.preservesJoinsClosed E.morphismClosedClosed)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
