import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FramesLocalesCanonicalLaneLean

structure PointFreeTopologyPackage where
  frameOfOpens : Prop
  nucleusOperator : Prop
  sublocaleLattice : Prop
  openSublocaleCharacterization : Prop

structure PointFreeTopologyEvidence (P : PointFreeTopologyPackage) where
  frameOfOpensClosed : P.frameOfOpens
  nucleusOperatorClosed : P.nucleusOperator
  sublocaleLatticeClosed : P.sublocaleLattice
  openSublocaleCharacterizationClosed : P.openSublocaleCharacterization

def PointFreeTopologyClosed (P : PointFreeTopologyPackage) : Prop :=
  P.frameOfOpens ∧ P.nucleusOperator ∧ P.sublocaleLattice ∧ P.openSublocaleCharacterization

theorem point_free_topology_closed_from_evidence (P : PointFreeTopologyPackage)
    (E : PointFreeTopologyEvidence P) : PointFreeTopologyClosed P := by
  exact And.intro E.frameOfOpensClosed
    (And.intro E.nucleusOperatorClosed
      (And.intro E.sublocaleLatticeClosed E.openSublocaleCharacterizationClosed))

end FramesLocalesCanonicalLaneLean
end HautevilleHouse
