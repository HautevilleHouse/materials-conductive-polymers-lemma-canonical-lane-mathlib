import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure HoppingConductionPackage where
  hoppingRate : ℝ
  localizationLength : ℝ
  temperatureDependence : ℝ → ℝ
  mottLaw : Prop
  hoppingRatePos : hoppingRate > 0
  localizationLengthPos : localizationLength > 0
  temperatureDependenceDefined : ∀ T : ℝ, T > 0 → temperatureDependence T > 0
  mottLawClosed : mottLaw

structure HoppingConductionEvidence (H : HoppingConductionPackage) where
  hoppingRateClosed : H.hoppingRate > 0
  localizationLengthClosed : H.localizationLength > 0
  temperatureDependenceClosed : ∀ T : ℝ, T > 0 → H.temperatureDependence T > 0
  mottLawClosed : H.mottLaw

def HoppingConductionClosed (H : HoppingConductionPackage) : Prop :=
  H.hoppingRate > 0 ∧ H.localizationLength > 0 ∧
  (∀ T : ℝ, T > 0 → H.temperatureDependence T > 0) ∧ H.mottLaw

theorem hopping_conduction_closed_from_evidence (H : HoppingConductionPackage)
    (E : HoppingConductionEvidence H) : HoppingConductionClosed H := by
  refine And.intro E.hoppingRateClosed (And.intro E.localizationLengthClosed
    (And.intro E.temperatureDependenceClosed E.mottLawClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
