import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  temperatureRange : Type u
  concentrationRange : Type v
  phaseBoundaries : Prop
  orderParameter : Prop
  criticalPoint : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  orderParameterClosed : P.orderParameter
  criticalPointClosed : P.criticalPoint

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.orderParameter ∧ P.criticalPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.orderParameterClosed E.criticalPointClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse