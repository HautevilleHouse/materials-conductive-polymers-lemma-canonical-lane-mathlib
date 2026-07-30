import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure MorphologyPackage where
  polymerMatrix : Type u
  dopantDistribution : Type v
  phaseSeparation : Prop
  percolationThreshold : Prop
  phaseSeparationClosed : phaseSeparation
  percolationThresholdClosed : percolationThreshold

structure MorphologyEvidence (M : MorphologyPackage) where
  phaseSeparationClosed : M.phaseSeparation
  percolationThresholdClosed : M.percolationThreshold

def MorphologyClosed (M : MorphologyPackage) : Prop :=
  M.phaseSeparation ∧ M.percolationThreshold

theorem morphology_closed_from_evidence (M : MorphologyPackage) (E : MorphologyEvidence M) : MorphologyClosed M := by
  exact And.intro E.phaseSeparationClosed E.percolationThresholdClosed

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse