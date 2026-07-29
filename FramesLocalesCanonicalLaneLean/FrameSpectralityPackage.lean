import FramesLocalesCanonicalLaneLean.LocalePackage

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SpectralityPackage {F : FramePackage} (L : LocalePackage F) where
  soberCondition : Prop
  spatialCondition : Prop
  spectralCondition : Prop
  spectralityLaws : Prop
  spectralityLawsClosed : spectralityLaws

structure SpectralityEvidence {F : FramePackage} {L : LocalePackage F} (S : SpectralityPackage L) where
  soberConditionClosed : S.soberCondition
  spatialConditionClosed : S.spatialCondition
  spectralConditionClosed : S.spectralCondition

def SpectralityClosed {F : FramePackage} {L : LocalePackage F} (S : SpectralityPackage L) : Prop :=
  S.soberCondition ∧ S.spatialCondition ∧ S.spectralCondition ∧ S.spectralityLaws

theorem spectrality_closed_from_evidence {F : FramePackage} {L : LocalePackage F} (S : SpectralityPackage L) (E : SpectralityEvidence S) : SpectralityClosed S := by
  refine And.intro E.soberConditionClosed (And.intro E.spatialConditionClosed (And.intro E.spectralConditionClosed S.spectralityLawsClosed))

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
