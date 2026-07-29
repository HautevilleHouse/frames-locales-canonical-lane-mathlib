import FramesLocalesCanonicalLaneLean.SoberSpacePackage

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure LocaleMorphismPackage (F G : FrameObject) where
  frameHomomorphism : Set (Set F.carrier) → Set (Set G.carrier)
  preservesFiniteMeets : Prop
  preservesArbitraryJoins : Prop
  morphismDefined : Prop
  morphismDefinedClosed : morphismDefined

def LocaleMorphismClosed (F G : FrameObject) (M : LocaleMorphismPackage F G) : Prop :=
  M.preservesFiniteMeets ∧ M.preservesArbitraryJoins ∧ M.morphismDefined

theorem locale_morphism_closed (F G : FrameObject) (M : LocaleMorphismPackage F G) (E : LocaleMorphismClosed F G M) :
    LocaleMorphismClosed F G M :=
  E

end FramesLocalesCanonicalLaneLean
end HautevilleHouse