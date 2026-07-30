import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure PercolationThresholdPackage where
  criticalConcentration : ℝ
  percolationProbability : ℝ → Prop
  metallicConductivity : Prop
  chargingEnergySuppressed : Prop
  criticalConcentrationPos : criticalConcentration > 0
  percolationProbabilityDefined : percolationProbability criticalConcentration
  metallicConductivityClosed : metallicConductivity
  chargingEnergySuppressedClosed : chargingEnergySuppressed

structure PercolationThresholdEvidence (P : PercolationThresholdPackage) where
  criticalConcentrationClosed : P.criticalConcentration > 0
  percolationProbabilityClosed : P.percolationProbability P.criticalConcentration
  metallicConductivityClosed : P.metallicConductivity
  chargingEnergySuppressedClosed : P.chargingEnergySuppressed

def PercolationThresholdClosed (P : PercolationThresholdPackage) : Prop :=
  P.criticalConcentration > 0 ∧ P.percolationProbability P.criticalConcentration ∧
  P.metallicConductivity ∧ P.chargingEnergySuppressed

theorem percolation_threshold_closed_from_evidence (P : PercolationThresholdPackage)
    (E : PercolationThresholdEvidence P) : PercolationThresholdClosed P := by
  exact And.intro E.criticalConcentrationClosed
    (And.intro E.percolationProbabilityClosed
      (And.intro E.metallicConductivityClosed E.chargingEnergySuppressedClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
