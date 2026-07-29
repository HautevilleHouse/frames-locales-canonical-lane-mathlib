import FramesLocalesCanonicalLaneLean.FrameLocalesGateLemmas

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

def ConstrainedFrameClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frame_endgame (A : AdmissibleClass) :
    ConstrainedFrameClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse