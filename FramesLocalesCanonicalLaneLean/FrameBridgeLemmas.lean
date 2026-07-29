import FramesLocalesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FrameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.frameDefinitionalClosure

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
