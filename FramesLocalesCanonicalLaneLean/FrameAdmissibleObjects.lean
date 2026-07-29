import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FrameAdmittedObject where
  space : FrameSpace
  pointfreeFrame : Prop
  localeFrame : Prop
  opensFrame : Prop
  frameDefinitionalClosure : pointfreeFrame ∧ localeFrame ∧ opensFrame

structure FrameEndgameState where
  object : FrameAdmittedObject

def FrameWitnessClosed (O : FrameAdmittedObject) : Prop :=
  O.frameDefinitionalClosure

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
