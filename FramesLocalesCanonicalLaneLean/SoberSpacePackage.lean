import FramesLocalesCanonicalLaneLean.FrameLocalesAdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SoberSpacePackage (F : FrameObject) where
  topologicalSpace : TopologicalSpace F.carrier
  soberCondition : Prop
  soberConditionClosed : soberCondition

def SoberSpaceClosed (F : FrameObject) (S : SoberSpacePackage F) : Prop :=
  S.soberCondition

theorem sober_space_closed (F : FrameObject) (S : SoberSpacePackage F) :
    SoberSpaceClosed F S :=
  S.soberConditionClosed

end FramesLocalesCanonicalLaneLean
end HautevilleHouse