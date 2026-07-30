import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ThermoelectricPackage where
  seebeckCoefficient : Type u
  electricalConductivity : Type v
  thermalConductivity : Type w
  figureOfMerit : Prop
  seebeckCoefficientModel : Prop
  electricalConductivityModel : Prop
  thermalConductivityModel : Prop
  figureOfMeritClosed : figureOfMerit
  seebeckClosed : seebeckCoefficientModel
  electricalClosed : electricalConductivityModel
  thermalClosed : thermalConductivityModel

structure ThermoelectricEvidence (T : ThermoelectricPackage) where
  figureOfMeritClosed : T.figureOfMerit
  seebeckClosed : T.seebeckCoefficientModel
  electricalClosed : T.electricalConductivityModel
  thermalClosed : T.thermalConductivityModel

def ThermoelectricClosed (T : ThermoelectricPackage) : Prop :=
  T.figureOfMerit ∧ T.seebeckCoefficientModel ∧ T.electricalConductivityModel ∧ T.thermalConductivityModel

theorem thermoelectric_closed_from_evidence (T : ThermoelectricPackage) (E : ThermoelectricEvidence T) : ThermoelectricClosed T := by
  exact And.intro E.figureOfMeritClosed (And.intro E.seebeckClosed (And.intro E.electricalClosed E.thermalClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse