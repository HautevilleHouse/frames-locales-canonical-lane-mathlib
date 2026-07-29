import FramesLocalesCanonicalLaneLean.FrameLocalesBridgeLemmas

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end FramesLocalesCanonicalLaneLean
end HautevilleHouse