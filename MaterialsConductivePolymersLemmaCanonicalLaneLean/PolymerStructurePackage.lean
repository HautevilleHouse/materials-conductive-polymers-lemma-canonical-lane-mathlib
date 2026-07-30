import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure PolymerStructurePackage where
  chainConformation : Type u
  conjugationLength : Type v
  dopantDistribution : Prop
  crystallinityDegree : Prop
  molecularWeight : Prop

structure PolymerStructureEvidence (P : PolymerStructurePackage) where
  dopantDistributionClosed : P.dopantDistribution
  crystallinityDegreeClosed : P.crystallinityDegree
  molecularWeightClosed : P.molecularWeight

def PolymerStructureClosed (P : PolymerStructurePackage) : Prop :=
  P.dopantDistribution ∧ P.crystallinityDegree ∧ P.molecularWeight

theorem polymer_structure_closed_from_evidence (P : PolymerStructurePackage)
    (E : PolymerStructureEvidence P) : PolymerStructureClosed P := by
  exact And.intro E.dopantDistributionClosed (And.intro E.crystallinityDegreeClosed E.molecularWeightClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse