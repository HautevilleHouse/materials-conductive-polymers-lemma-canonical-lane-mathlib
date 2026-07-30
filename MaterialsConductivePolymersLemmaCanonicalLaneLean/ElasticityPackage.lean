import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ElasticityPackage where
  strainTensor : Type u
  stressTensor : Type v
  constitutiveLaw : Prop
  youngModulus : Prop
  poissonRatio : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  constitutiveLawClosed : E.constitutiveLaw
  youngModulusClosed : E.youngModulus
  poissonRatioClosed : E.poissonRatio

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.constitutiveLaw ∧ E.youngModulus ∧ E.poissonRatio

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.constitutiveLawClosed (And.intro Ev.youngModulusClosed Ev.poissonRatioClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse