import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure FrameAdmittedObject where
  L : Type u
  le : L → L → Prop
  refl : ∀ x : L, le x x
  trans : ∀ x y z : L, le x y → le y z → le x z
  antisymm : ∀ x y : L, le x y → le y x → x = y
  meets : ∀ (x y : L), ∃ z : L, (le z x ∧ le z y) ∧ (∀ w : L, le w x → le w y → le w z)
  joins : ∀ (x y : L), ∃ z : L, (le x z ∧ le y z) ∧ (∀ w : L, le x w → le y w → le z w)
  conclusion : Prop

structure AdmissibleClass where
  object : FrameAdmittedObject
  localePropertySatisfied : Prop
  remainderRecorded : Prop
  gateWitness : localePropertySatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FrameWitnessClosed A.object ∧ (A.localePropertySatisfied ∨ A.remainderRecorded)

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
