import HautevilleHouse.FramesLocalesCanonicalLaneLean.SublocaleLattice

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SublocaleImagePackage {A B : FrameSublocalePackage}
    (f : SublocaleMorphismPackage A B) where
  imageFrame : FrameSublocalePackage
  imageClosure : SublocaleMorphismPackage A imageFrame
  universalProperty : Prop
  imageClosed : Prop

structure SublocaleImageEvidence {A B : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} (I : SublocaleImagePackage f) where
  universalPropertyClosed : I.universalProperty
  imageClosedClosed : I.imageClosed

def SublocaleImageClosed {A B : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} (I : SublocaleImagePackage f) : Prop :=
  I.universalProperty ∧ I.imageClosed

theorem sublocale_image_closed_from_evidence {A B : FrameSublocalePackage}
    {f : SublocaleMorphismPackage A B} (I : SublocaleImagePackage f)
    (E : SublocaleImageEvidence I) : SublocaleImageClosed I := by
  exact And.intro E.universalPropertyClosed E.imageClosedClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
