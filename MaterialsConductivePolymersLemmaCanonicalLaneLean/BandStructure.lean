import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure BandStructurePackage where
  bandGap : ℝ
  fermiEnergy : ℝ
  densityOfStates : ℝ → ℝ
  dopingModulation : ℝ → ℝ
  bandGapPos : bandGap ≥ 0
  fermiEnergyDefined : fermiEnergy > 0
  densityOfStatesDefined : ∀ E : ℝ, densityOfStates E ≥ 0
  dopingModulationDefined : ∀ x : ℝ, dopingModulation x ≥ 0

structure BandStructureEvidence (B : BandStructurePackage) where
  bandGapClosed : B.bandGap ≥ 0
  fermiEnergyClosed : B.fermiEnergy > 0
  densityOfStatesClosed : ∀ E : ℝ, B.densityOfStates E ≥ 0
  dopingModulationClosed : ∀ x : ℝ, B.dopingModulation x ≥ 0

def BandStructureClosed (B : BandStructurePackage) : Prop :=
  B.bandGap ≥ 0 ∧ B.fermiEnergy > 0 ∧
  (∀ E : ℝ, B.densityOfStates E ≥ 0) ∧ (∀ x : ℝ, B.dopingModulation x ≥ 0)

theorem band_structure_closed_from_evidence (B : BandStructurePackage)
    (Ev : BandStructureEvidence B) : BandStructureClosed B := by
  exact And.intro Ev.bandGapClosed (And.intro Ev.fermiEnergyClosed
    (And.intro Ev.densityOfStatesClosed Ev.dopingModulationClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
