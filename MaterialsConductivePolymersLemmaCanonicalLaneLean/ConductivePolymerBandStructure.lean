import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure BandStructurePackage where
  crystalLattice : Type u
  brillouinZone : Type v
  hamiltonian : Type w
  bandGap : Prop
  densityOfStates : Prop
  bandGapClosed : bandGap
  densityOfStatesClosed : densityOfStates

structure BandStructureEvidence (B : BandStructurePackage) where
  bandGapClosed : B.bandGap
  densityOfStatesClosed : B.densityOfStates

def BandStructureClosed (B : BandStructurePackage) : Prop :=
  B.bandGap ∧ B.densityOfStates

theorem band_structure_closed_from_evidence (B : BandStructurePackage) (E : BandStructureEvidence B) : BandStructureClosed B := by
  exact And.intro E.bandGapClosed E.densityOfStatesClosed

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse