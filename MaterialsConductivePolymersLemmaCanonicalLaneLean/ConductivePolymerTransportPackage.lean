import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ConductivePolymerTransportPackage where
  chargeCarrierType : Type u
  mobilityModel : Type v
  conductivityFormula : Prop
  hoppingRate : Prop
  percolationThreshold : Prop

structure ConductivePolymerTransportEvidence (C : ConductivePolymerTransportPackage) where
  conductivityFormulaClosed : C.conductivityFormula
  hoppingRateClosed : C.hoppingRate
  percolationThresholdClosed : C.percolationThreshold

def ConductivePolymerTransportClosed (C : ConductivePolymerTransportPackage) : Prop :=
  C.conductivityFormula ∧ C.hoppingRate ∧ C.percolationThreshold

theorem conductive_polymer_transport_closed_from_evidence
    (C : ConductivePolymerTransportPackage)
    (E : ConductivePolymerTransportEvidence C) : ConductivePolymerTransportClosed C := by
  exact And.intro E.conductivityFormulaClosed (And.intro E.hoppingRateClosed E.percolationThresholdClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse