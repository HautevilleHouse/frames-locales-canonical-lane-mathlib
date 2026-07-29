import FramesLocalesCanonicalLaneLean.CoverageConditions

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure SheafificationPackage (L : LocalePackage) (C : CoverageCondition L) where
  presheaf : Type u
  sheafCondition : Prop
  plusConstruction : Prop
  sheafificationFunctor : Prop
  universalProperty : Prop
  sheafificationClosed : sheafCondition ∧ plusConstruction ∧ sheafificationFunctor ∧ universalProperty

end FramesLocalesCanonicalLaneLean
end HautevilleHouse