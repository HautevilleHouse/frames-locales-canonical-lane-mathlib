import FramesLocalesCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

def ConstrainedFramesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frames_endgame (A : AdmissibleClass) :
    ConstrainedFramesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
