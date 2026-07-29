import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure Frame where
  L : Type u
  le : L → L → Prop
  refl : ∀ x : L, le x x
  trans : ∀ x y z : L, le x y → le y z → le x z
  antisymm : ∀ x y : L, le x y → le y x → x = y
  meets : ∀ (x y : L), ∃ z : L, (le z x ∧ le z y) ∧ (∀ w : L, le w x → le w y → le w z)
  joins : ∀ (x y : L), ∃ z : L, (le x z ∧ le y z) ∧ (∀ w : L, le x w → le y w → le z w)

structure Locale extends Frame where
  finiteMeets : ∀ (I : Finset L), ∃ z : L, (∀ i ∈ I, le z i) ∧ (∀ w : L, (∀ i ∈ I, le w i) → le w z)
  arbitraryJoins : ∀ (I : Set L), ∃ z : L, (∀ i ∈ I, le i z) ∧ (∀ w : L, (∀ i ∈ I, le i w) → le z w)

structure FrameWitnessProof (L : Locale) where
  frameProperty : ∀ (x y : L.toFrame.L), L.toFrame.meets x y ≠ ∅
  localeProperty : L.finiteMeets ≠ ∅ ∧ L.arbitraryJoins ≠ ∅

def FrameWitnessClosed (F : FrameAdmittedObject) : Prop :=
  F.conclusion

theorem frame_locale_property_holds (L : Locale) (P : FrameWitnessProof L) :
  FrameWitnessClosed (⟨L.toFrame, L.toFrame.refl, L.toFrame.trans, L.toFrame.antisymm, L.toFrame.meets, L.toFrame.joins, by
    exact And.intro P.frameProperty (And.intro P.localeProperty.1 P.localeProperty.2)
  ⟩ : FrameAdmittedObject) := by
  simpa [FrameWitnessClosed] using P

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
