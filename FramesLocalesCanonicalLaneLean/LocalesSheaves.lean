import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure LocalePackage where
  frame : Type u
  framePoset : PartialOrder frame
  frameComplete : CompleteLattice frame
  frameSatisfiesFrameLaw : Prop
  correspondingLocale : Type v
  localeTopology : TopologicalSpace correspondingLocale
  frameIsSheaf : Prop
  localeStructureClosed : frameSatisfiesFrameLaw ∧ frameIsSheaf

end FramesLocalesCanonicalLaneLean
end HautevilleHouse