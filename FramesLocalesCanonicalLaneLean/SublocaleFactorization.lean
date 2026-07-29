import HautevilleHouse.FramesLocalesCanonicalLaneLean.SublocaleMorphism

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SublocaleFactorizationPackage {A B C : FrameSublocalePackage}
    (f : SublocaleMorphismPackage A B) (g : SublocaleMorphismPackage A C) where
  factorObject : FrameSublocalePackage
  h : SublocaleMorphismPackage factorObject B
  k : SublocaleMorphismPackage A factorObject
  commutes : g.carrierMap = h.carrierMap ∘ k.carrierMap
  factorizationClosed : Prop

structure SublocaleFactorizationEvidence {A B C : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} {g : SublocaleMorphismPackage A C}
    (F : SublocaleFactorizationPackage f g) where
  commutesClosed : F.commutes
  factorizationClosedClosed : F.factorizationClosed

def SublocaleFactorizationClosed {A B C : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} {g : SublocaleMorphismPackage A C}
    (F : SublocaleFactorizationPackage f g) : Prop :=
  F.commutes ∧ F.factorizationClosed

theorem sublocale_factorization_closed_from_evidence {A B C : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} {g : SublocaleMorphismPackage A C}
    (F : SublocaleFactorizationPackage f g) (E : SublocaleFactorizationEvidence F) :
    SublocaleFactorizationClosed F := by
  exact And.intro E.commutesClosed E.factorizationClosedClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
