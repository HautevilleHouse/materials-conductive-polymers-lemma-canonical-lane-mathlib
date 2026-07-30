import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure FractureMechanicsPackage where
  crackTipField : Type u
  stressIntensityFactor : Type v
  fractureToughness : Prop
  crackPropagationCriterion : Prop
  fatigueLife : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  fractureToughnessClosed : F.fractureToughness
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fatigueLifeClosed : F.fatigueLife

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.fractureToughness ∧ F.crackPropagationCriterion ∧ F.fatigueLife

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage)
    (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.fractureToughnessClosed (And.intro E.crackPropagationCriterionClosed E.fatigueLifeClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse