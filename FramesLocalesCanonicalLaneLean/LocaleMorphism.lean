import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure LocaleMorphismPackage where
  morphismDefined : Prop
  compositionClosed : Prop
  identityExists : Prop
  pullbackPreservesFiniteMeets : Prop

structure LocaleMorphismEvidence (P : LocaleMorphismPackage) where
  morphismDefinedClosed : P.morphismDefined
  compositionClosedClosed : P.compositionClosed
  identityExistsClosed : P.identityExists
  pullbackPreservesFiniteMeetsClosed : P.pullbackPreservesFiniteMeets

def LocaleMorphismClosed (P : LocaleMorphismPackage) : Prop :=
  P.morphismDefined ∧ P.compositionClosed ∧ P.identityExists ∧ P.pullbackPreservesFiniteMeets

theorem locale_morphism_closed_from_evidence (P : LocaleMorphismPackage)
    (E : LocaleMorphismEvidence P) : LocaleMorphismClosed P := by
  exact And.intro E.morphismDefinedClosed
    (And.intro E.compositionClosedClosed
      (And.intro E.identityExistsClosed E.pullbackPreservesFiniteMeetsClosed))

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
