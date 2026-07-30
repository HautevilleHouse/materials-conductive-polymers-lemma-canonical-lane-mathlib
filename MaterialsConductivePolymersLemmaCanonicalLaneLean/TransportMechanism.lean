import canonicaLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure TransportMechanismPackage {M : ConductivePolymerMaterial}
    (D : DopingModelPackage M) where
  variableRangeHopping : Prop
  polaronFormation : Prop
  bandLikeTransport : Prop
  temperatureDependence : Prop
  fieldEffect : Prop
  variableRangeHoppingClosed : variableRangeHopping
  polaronFormationClosed : polaronFormation
  bandLikeTransportClosed : bandLikeTransport
  temperatureDependenceClosed : temperatureDependence
  fieldEffectClosed : fieldEffect

structure TransportMechanismEvidence {M : ConductivePolymerMaterial}
    {D : DopingModelPackage M} (T : TransportMechanismPackage D) where
  variableRangeHoppingClosed : T.variableRangeHopping
  polaronFormationClosed : T.polaronFormation
  bandLikeTransportClosed : T.bandLikeTransport
  temperatureDependenceClosed : T.temperatureDependence
  fieldEffectClosed : T.fieldEffect

def TransportMechanismClosed {M : ConductivePolymerMaterial}
    {D : DopingModelPackage M} (T : TransportMechanismPackage D) : Prop :=
  T.variableRangeHopping ∧ T.polaronFormation ∧ T.bandLikeTransport ∧
  T.temperatureDependence ∧ T.fieldEffect

theorem transport_mechanism_closed_from_evidence {M : ConductivePolymerMaterial}
    {D : DopingModelPackage M} (T : TransportMechanismPackage D)
    (E : TransportMechanismEvidence T) : TransportMechanismClosed T := by
  exact And.intro E.variableRangeHoppingClosed
    (And.intro E.polaronFormationClosed
      (And.intro E.bandLikeTransportClosed
        (And.intro E.temperatureDependenceClosed E.fieldEffectClosed)))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
