import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameObject where
  carrier : Type
  topology : TopologicalSpace carrier
  frame : Set (Set carrier)
  frameCovers : Prop
  frameClosedUnderFiniteMeet : Prop

structure AdmittedFrameObject where
  frameObject : FrameObject
  localeMorphism : Prop
  conclusion : localeMorphism

def FrameWitnessClosed (O : AdmittedFrameObject) : Prop :=
  O.localeMorphism

end FramesLocalesCanonicalLaneLean
end HautevilleHouse