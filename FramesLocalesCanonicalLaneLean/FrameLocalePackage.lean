import FramesLocalesCanonicalLaneLean.FrameAdmissibleClass
import Mathlib.Order.CompleteLattice

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FramePackage where
  carrierType : Type u
  partialOrder : PartialOrder carrierType
  finiteMeets : Type v
  arbitraryJoins : Type w
  frameLaws : Prop
  frameLawsClosed : frameLaws

structure LocalePackage (F : FramePackage) where
  frame : F
  opensFunctor : Type u -> Type v
  adjointProperty : Prop
  adjointPropertyClosed : adjointProperty

def FramePackageClosed (F : FramePackage) : Prop :=
  F.frameLaws

def LocalePackageClosed {F : FramePackage} (L : LocalePackage F) : Prop :=
  L.adjointProperty

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
