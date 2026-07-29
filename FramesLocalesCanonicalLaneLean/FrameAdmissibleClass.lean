import FramesLocalesCanonicalLaneLean.FrameAdmissibleObjects

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure AdmissibleClass where
  object : FrameAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrameWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
