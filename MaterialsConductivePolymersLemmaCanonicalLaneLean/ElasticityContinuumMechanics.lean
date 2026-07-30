import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ElasticityContinuumMechanicsPackage where
  deformationGradient : Type u
  stressTensor : Type v
  strainTensor : Type w
  constitutiveLaw : Prop
  equilibriumEquations : Prop
  boundaryConditions : Prop

structure ElasticityContinuumMechanicsEvidence (E : ElasticityContinuumMechanicsPackage) where
  constitutiveLawClosed : E.constitutiveLaw
  equilibriumEquationsClosed : E.equilibriumEquations
  boundaryConditionsClosed : E.boundaryConditions

def ElasticityContinuumMechanicsClosed (E : ElasticityContinuumMechanicsPackage) : Prop :=
  E.constitutiveLaw ∧ E.equilibriumEquations ∧ E.boundaryConditions

theorem elasticity_continuum_mechanics_closed_from_evidence (E : ElasticityContinuumMechanicsPackage) (Ev : ElasticityContinuumMechanicsEvidence E) : ElasticityContinuumMechanicsClosed E := by
  exact And.intro Ev.constitutiveLawClosed (And.intro Ev.equilibriumEquationsClosed Ev.boundaryConditionsClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse