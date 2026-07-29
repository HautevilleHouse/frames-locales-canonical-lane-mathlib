import HautevilleHouse.FramesLocalesCanonicalLaneLean.SublocaleFactorization

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SublocaleLatticePackage (A : FrameSublocalePackage) where
  sublocales : Set (FrameSublocalePackage)
  meetSublocale : FrameSublocalePackage → FrameSublocalePackage → FrameSublocalePackage
  joinSublocale : FrameSublocalePackage → FrameSublocalePackage → FrameSublocalePackage
  latticeLaws : Prop
  latticeClosed : Prop

structure SublocaleLatticeEvidence {A : FrameSublocalePackage}
    (L : SublocaleLatticePackage A) where
  latticeLawsClosed : L.latticeLaws
  latticeClosedClosed : L.latticeClosed

def SublocaleLatticeClosed {A : FrameSublocalePackage}
    (L : SublocaleLatticePackage A) : Prop :=
  L.latticeLaws ∧ L.latticeClosed

theorem sublocale_lattice_closed_from_evidence {A : FrameSublocalePackage}
    (L : SublocaleLatticePackage A) (E : SublocaleLatticeEvidence L) :
    SublocaleLatticeClosed L := by
  exact And.intro E.latticeLawsClosed E.latticeClosedClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
