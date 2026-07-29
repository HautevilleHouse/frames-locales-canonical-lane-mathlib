import FramesLocalesCanonicalLaneLean.SpectralityPackage

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure StoneRepresentationPackage {F : FramePackage} {L : LocalePackage F} (S : SpectralityPackage L) where
  stoneSpace : Type u
  stoneTopology : TopologicalSpace stoneSpace
  spectralHomeomorphism : Prop
  dualEquivalence : Prop
  spectralHomeomorphismClosed : spectralHomeomorphism
  dualEquivalenceClosed : dualEquivalence

structure StoneRepresentationEvidence {F : FramePackage} {L : LocalePackage F} {S : SpectralityPackage L} (R : StoneRepresentationPackage S) where
  spectralHomeomorphismClosed : R.spectralHomeomorphism
  dualEquivalenceClosed : R.dualEquivalence

def StoneRepresentationClosed {F : FramePackage} {L : LocalePackage F} {S : SpectralityPackage L} (R : StoneRepresentationPackage S) : Prop :=
  R.spectralHomeomorphism ∧ R.dualEquivalence

theorem stone_representation_closed_from_evidence {F : FramePackage} {L : LocalePackage F} {S : SpectralityPackage L} (R : StoneRepresentationPackage S) (E : StoneRepresentationEvidence R) : StoneRepresentationClosed R := by
  exact And.intro E.spectralHomeomorphismClosed E.dualEquivalenceClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
