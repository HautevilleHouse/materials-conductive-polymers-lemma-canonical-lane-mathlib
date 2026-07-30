import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure FractureMechanicsCrackPropagationPackage where
  crackGeometry : Type u
  stressIntensityFactor : Type v
  energyReleaseRate : Type w
  crackPropagationCriterion : Prop
  fractureToughness : Prop
  cyclicLoadingFatigue : Prop

structure FractureMechanicsCrackPropagationEvidence (F : FractureMechanicsCrackPropagationPackage) where
  crackPropagationCriterionClosed : F.crackPropagationCriterion
  fractureToughnessClosed : F.fractureToughness
  cyclicLoadingFatigueClosed : F.cyclicLoadingFatigue

def FractureMechanicsCrackPropagationClosed (F : FractureMechanicsCrackPropagationPackage) : Prop :=
  F.crackPropagationCriterion ∧ F.fractureToughness ∧ F.cyclicLoadingFatigue

theorem fracture_mechanics_crack_propagation_closed_from_evidence (F : FractureMechanicsCrackPropagationPackage) (Ev : FractureMechanicsCrackPropagationEvidence F) : FractureMechanicsCrackPropagationClosed F := by
  exact And.intro Ev.crackPropagationCriterionClosed (And.intro Ev.fractureToughnessClosed Ev.cyclicLoadingFatigueClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse