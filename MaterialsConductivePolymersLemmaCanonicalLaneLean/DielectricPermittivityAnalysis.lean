import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure PermittivityPackage where
  frequencyRange : Type u
  complexDielectric : Type v
  permittivityModel : Prop
  lossTangent : Prop
  permittivityModelClosed : permittivityModel
  lossTangentClosed : lossTangent

structure PermittivityEvidence (P : PermittivityPackage) where
  permittivityModelClosed : P.permittivityModel
  lossTangentClosed : P.lossTangent

def PermittivityClosed (P : PermittivityPackage) : Prop :=
  P.permittivityModel ∧ P.lossTangent

theorem permittivity_closed_from_evidence (P : PermittivityPackage) (E : PermittivityEvidence P) : PermittivityClosed P := by
  exact And.intro E.permittivityModelClosed E.lossTangentClosed

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse