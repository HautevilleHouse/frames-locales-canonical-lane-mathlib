import canonicalLaneMathlib.AdmissibleClass
import FramesLocalesCanonicalLaneLean.FrameLocalesAdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FrameWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end FramesLocalesCanonicalLaneLean
end HautevilleHouse