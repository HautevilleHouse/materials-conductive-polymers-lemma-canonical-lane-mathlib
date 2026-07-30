import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ConductivePolymerStructure where
  backboneChains : Type u
  dopingLevel : ℝ
  conjugationLength : ℕ
  conductivityModel : Prop
  chainOrientation : Prop
  backboneChainsDefined : backboneChains
  dopingLevelChosen : dopingLevel > 0
  conjugationLengthPositive : conjugationLength > 0
  conductivityModelClosed : conductivityModel
  chainOrientationClosed : chainOrientation

structure ConductivePolymerEvidence (P : ConductivePolymerStructure) where
  backboneChainsClosed : P.backboneChains
  dopingLevelClosed : P.dopingLevel > 0
  conjugationLengthClosed : P.conjugationLength > 0
  conductivityModelClosed : P.conductivityModel
  chainOrientationClosed : P.chainOrientation

def ConductivePolymerClosed (P : ConductivePolymerStructure) : Prop :=
  P.dopingLevel > 0 ∧ P.conjugationLength > 0 ∧ P.conductivityModel ∧ P.chainOrientation

theorem conductive_polymer_closed_from_evidence (P : ConductivePolymerStructure)
    (E : ConductivePolymerEvidence P) : ConductivePolymerClosed P := by
  exact And.intro E.dopingLevelClosed
    (And.intro E.conjugationLengthClosed
      (And.intro E.conductivityModelClosed E.chainOrientationClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
