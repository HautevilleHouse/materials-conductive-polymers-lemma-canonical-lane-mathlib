import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure TransportPackage where
  mobilityModel : Type u
  hoppingRate : Type v
  variableRangeHopping : Prop
  metallicConduction : Prop
  variableRangeHoppingClosed : variableRangeHopping
  metallicConductionClosed : metallicConduction

structure TransportEvidence (T : TransportPackage) where
  variableRangeHoppingClosed : T.variableRangeHopping
  metallicConductionClosed : T.metallicConduction

def TransportClosed (T : TransportPackage) : Prop :=
  T.variableRangeHopping ∧ T.metallicConduction

theorem transport_closed_from_evidence (T : TransportPackage) (E : TransportEvidence T) : TransportClosed T := by
  exact And.intro E.variableRangeHoppingClosed E.metallicConductionClosed

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse