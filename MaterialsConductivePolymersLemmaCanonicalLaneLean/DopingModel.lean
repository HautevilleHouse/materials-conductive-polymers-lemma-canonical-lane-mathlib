import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure DopingModelPackage (M : ConductivePolymerMaterial) where
  dopantConcentration : Type u
  dopingEfficiency : Type v
  chargeCarrierDensity : Type w
  mobiltyVsDoping : Prop
  seebeckCoefficient : Prop
  dopingEnergyLevel : Prop
  mobiltyVsDopingClosed : mobiltyVsDoping
  seebeckCoefficientClosed : seebeckCoefficient
  dopingEnergyLevelClosed : dopingEnergyLevel

structure DopingModelEvidence {M : ConductivePolymerMaterial}
    (D : DopingModelPackage M) where
  mobiltyVsDopingClosed : D.mobiltyVsDoping
  seebeckCoefficientClosed : D.seebeckCoefficient
  dopingEnergyLevelClosed : D.dopingEnergyLevel

def DopingModelClosed {M : ConductivePolymerMaterial} (D : DopingModelPackage M) : Prop :=
  D.mobiltyVsDoping ∧ D.seebeckCoefficient ∧ D.dopingEnergyLevel

theorem doping_model_closed_from_evidence {M : ConductivePolymerMaterial}
    (D : DopingModelPackage M) (E : DopingModelEvidence D) : DopingModelClosed D := by
  exact And.intro E.mobiltyVsDopingClosed
    (And.intro E.seebeckCoefficientClosed E.dopingEnergyLevelClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
