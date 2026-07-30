import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure PhaseDiagramPackage where
  componentSpecies : List String
  temperatureRange : Float × Float
  pressureRange : Float × Float
  phaseBoundariesIdentified : Prop
  triplePointsResolved : Prop
  equilibriumPhasesCataloged : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesIdentifiedClosed : P.phaseBoundariesIdentified
  triplePointsResolvedClosed : P.triplePointsResolved
  equilibriumPhasesCatalogedClosed : P.equilibriumPhasesCataloged

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesIdentified ∧ P.triplePointsResolved ∧ P.equilibriumPhasesCataloged

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesIdentifiedClosed (And.intro E.triplePointsResolvedClosed E.equilibriumPhasesCatalogedClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse