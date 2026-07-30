import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ElasticityTensorPackage where
  stiffnessMatrix : Float → Float → Float → Float → Float → Float → Float → Float → Float → Float
  complianceMatrix : Float → Float → Float → Float → Float → Float → Float → Float → Float → Float
  symmetryConditionsSatisfied : Prop
  positiveDefiniteChecked : Prop
  crystalClassMatched : Prop

structure ElasticityTensorEvidence (E : ElasticityTensorPackage) where
  symmetryConditionsSatisfiedClosed : E.symmetryConditionsSatisfied
  positiveDefiniteCheckedClosed : E.positiveDefiniteChecked
  crystalClassMatchedClosed : E.crystalClassMatched

def ElasticityTensorClosed (E : ElasticityTensorPackage) : Prop :=
  E.symmetryConditionsSatisfied ∧ E.positiveDefiniteChecked ∧ E.crystalClassMatched

theorem elasticity_tensor_closed_from_evidence (E : ElasticityTensorPackage) (Ev : ElasticityTensorEvidence E) :
    ElasticityTensorClosed E := by
  exact And.intro Ev.symmetryConditionsSatisfiedClosed (And.intro Ev.positiveDefiniteCheckedClosed Ev.crystalClassMatchedClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse