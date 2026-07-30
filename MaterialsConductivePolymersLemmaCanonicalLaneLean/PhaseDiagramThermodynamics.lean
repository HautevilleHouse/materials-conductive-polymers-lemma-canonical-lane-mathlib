import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure PhaseDiagramThermodynamicsPackage where
  temperatureRange : Type u
  pressureRange : Type v
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  criticalPoints : Prop
  phaseTransitionsClassified : Prop

structure PhaseDiagramThermodynamicsEvidence (P : PhaseDiagramThermodynamicsPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  criticalPointsClosed : P.criticalPoints
  phaseTransitionsClassifiedClosed : P.phaseTransitionsClassified

def PhaseDiagramThermodynamicsClosed (P : PhaseDiagramThermodynamicsPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.criticalPoints ∧ P.phaseTransitionsClassified

theorem phase_diagram_thermodynamics_closed_from_evidence (P : PhaseDiagramThermodynamicsPackage) (E : PhaseDiagramThermodynamicsEvidence P) : PhaseDiagramThermodynamicsClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.gibbsFreeEnergyClosed (And.intro E.criticalPointsClosed E.phaseTransitionsClassifiedClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse