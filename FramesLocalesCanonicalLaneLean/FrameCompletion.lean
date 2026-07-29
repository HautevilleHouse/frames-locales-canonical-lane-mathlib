import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameCompletionPackage where
  completionExists : Prop
  completionUnique : Prop
  completionPreservesStructure : Prop

structure FrameCompletionEvidence (P : FrameCompletionPackage) where
  completionExistsClosed : P.completionExists
  completionUniqueClosed : P.completionUnique
  completionPreservesStructureClosed : P.completionPreservesStructure

def FrameCompletionClosed (P : FrameCompletionPackage) : Prop :=
  P.completionExists ∧ P.completionUnique ∧ P.completionPreservesStructure

theorem frame_completion_closed_from_evidence (P : FrameCompletionPackage)
    (E : FrameCompletionEvidence P) : FrameCompletionClosed P := by
  exact And.intro E.completionExistsClosed
    (And.intro E.completionUniqueClosed E.completionPreservesStructureClosed)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
