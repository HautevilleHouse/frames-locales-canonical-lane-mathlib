import FramesLocalesCanonicalLaneLean.FrameLocalesFinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "frames-locales-canonical-lane",
  theoremObject := "ConstrainedFrameClosure",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

def theoremSpecificEndgamePilotClosed : Prop :=
  forall A : AdmissibleClass, ConstrainedFrameClosure A

theorem theorem_specific_endgame_pilot_checked :
    theoremSpecificEndgamePilotClosed :=
  fun A => constrained_frame_endgame A

end FramesLocalesCanonicalLaneLean
end HautevilleHouse