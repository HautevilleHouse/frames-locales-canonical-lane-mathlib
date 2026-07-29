import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SpectralLocalePackage where
  spectralFrameGiven : Prop
  compactElementsFormBasis : Prop
  localeSpectral : Prop
  stoneDualityApplied : Prop

structure SpectralLocaleEvidence (P : SpectralLocalePackage) where
  spectralFrameGivenClosed : P.spectralFrameGiven
  compactElementsFormBasisClosed : P.compactElementsFormBasis
  localeSpectralClosed : P.localeSpectral
  stoneDualityAppliedClosed : P.stoneDualityApplied

def SpectralLocaleClosed (P : SpectralLocalePackage) : Prop :=
  P.spectralFrameGiven ∧ P.compactElementsFormBasis ∧ P.localeSpectral ∧ P.stoneDualityApplied

theorem spectral_locale_closed_from_evidence (P : SpectralLocalePackage)
    (E : SpectralLocaleEvidence P) : SpectralLocaleClosed P := by
  exact And.intro E.spectralFrameGivenClosed
    (And.intro E.compactElementsFormBasisClosed
      (And.intro E.localeSpectralClosed E.stoneDualityAppliedClosed))

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
