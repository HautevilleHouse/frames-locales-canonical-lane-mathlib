import HautevilleHouse.FramesLocalesCanonicalLaneLean.SublocaleImage

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SublocaleQuotientPackage {A B : FrameSublocalePackage}
    (f : SublocaleMorphismPackage A B) where
  kernelSublocale : FrameSublocalePackage
  quotientFrame : FrameSublocalePackage
  quotientMorphism : SublocaleMorphismPackage A quotientFrame
  factorization : SublocaleFactorizationPackage f quotientMorphism
  quotientClosed : Prop

structure SublocaleQuotientEvidence {A B : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} (Q : SublocaleQuotientPackage f) where
  factorizationClosed : SublocaleFactorizationClosed Q.factorization
  quotientClosedClosed : Q.quotientClosed

def SublocaleQuotientClosed {A B : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} (Q : SublocaleQuotientPackage f) : Prop :=
  SublocaleFactorizationClosed Q.factorization ∧ Q.quotientClosed

theorem sublocale_quotient_closed_from_evidence {A B : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} (Q : SublocaleQuotientPackage f)
    (E : SublocaleQuotientEvidence Q) : SublocaleQuotientClosed Q := by
  exact And.intro E.factorizationClosed E.quotientClosedClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
