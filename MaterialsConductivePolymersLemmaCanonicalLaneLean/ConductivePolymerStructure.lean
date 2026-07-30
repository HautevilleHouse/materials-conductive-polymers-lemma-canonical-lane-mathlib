import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ConductivePolymerMaterial where
  polymerChain : Type u
  dopantProfile : Type v
  conjugationLength : Type w
  bandGap : Prop
  conductivityAnisotropy : Prop
  percolationThreshold : Prop
  hoppingTransportEnabled : Prop
  cristallinityFraction : Prop
  bandGapClosed : bandGap
  conductivityAnisotropyClosed : conductivityAnisotropy
  percolationThresholdClosed : percolationThreshold
  hoppingTransportEnabledClosed : hoppingTransportEnabled
  cristallinityFractionClosed : cristallinityFraction

structure ConductivePolymerEvidence (M : ConductivePolymerMaterial) where
  bandGapClosed : M.bandGap
  conductivityAnisotropyClosed : M.conductivityAnisotropy
  percolationThresholdClosed : M.percolationThreshold
  hoppingTransportEnabledClosed : M.hoppingTransportEnabled
  cristallinityFractionClosed : M.cristallinityFraction

def ConductivePolymerClosed (M : ConductivePolymerMaterial) : Prop :=
  M.bandGap ∧ M.conductivityAnisotropy ∧ M.percolationThreshold ∧
  M.hoppingTransportEnabled ∧ M.cristallinityFraction

theorem conductive_polymer_closed_from_evidence (M : ConductivePolymerMaterial)
    (E : ConductivePolymerEvidence M) : ConductivePolymerClosed M := by
  exact And.intro E.bandGapClosed
    (And.intro E.conductivityAnisotropyClosed
      (And.intro E.percolationThresholdClosed
        (And.intro E.hoppingTransportEnabledClosed E.cristallinityFractionClosed)))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
