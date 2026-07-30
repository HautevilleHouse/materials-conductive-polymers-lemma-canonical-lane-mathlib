import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ConductivitySpectroscopyPackage where
  frequencyRange : Type u
  acConductivity : Type v
  dcConductivity : Prop
  dielectricResponse : Prop
  activationEnergy : Prop

structure ConductivitySpectroscopyEvidence (C : ConductivitySpectroscopyPackage) where
  dcConductivityClosed : C.dcConductivity
  dielectricResponseClosed : C.dielectricResponse
  activationEnergyClosed : C.activationEnergy

def ConductivitySpectroscopyClosed (C : ConductivitySpectroscopyPackage) : Prop :=
  C.dcConductivity ∧ C.dielectricResponse ∧ C.activationEnergy

theorem conductivity_spectroscopy_closed_from_evidence
    (C : ConductivitySpectroscopyPackage)
    (E : ConductivitySpectroscopyEvidence C) : ConductivitySpectroscopyClosed C := by
  exact And.intro E.dcConductivityClosed (And.intro E.dielectricResponseClosed E.activationEnergyClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse