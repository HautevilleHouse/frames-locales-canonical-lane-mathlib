import FramesLocalesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
