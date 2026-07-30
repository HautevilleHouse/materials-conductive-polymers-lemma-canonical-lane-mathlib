import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ConductivePolymersElectronicStructurePackage where
  polymerChainGeometry : Type u
  bandStructure : Type v
  dopingLevel : Type w
  conjugatedPiSystem : Prop
  chargeTransportMechanism : Prop
  conductivityModel : Prop

structure ConductivePolymersElectronicStructureEvidence (C : ConductivePolymersElectronicStructurePackage) where
  conjugatedPiSystemClosed : C.conjugatedPiSystem
  chargeTransportMechanismClosed : C.chargeTransportMechanism
  conductivityModelClosed : C.conductivityModel

def ConductivePolymersElectronicStructureClosed (C : ConductivePolymersElectronicStructurePackage) : Prop :=
  C.conjugatedPiSystem ∧ C.chargeTransportMechanism ∧ C.conductivityModel

theorem conductive_polymers_electronic_structure_closed_from_evidence (C : ConductivePolymersElectronicStructurePackage) (E : ConductivePolymersElectronicStructureEvidence C) : ConductivePolymersElectronicStructureClosed C := by
  exact And.intro E.conjugatedPiSystemClosed (And.intro E.chargeTransportMechanismClosed E.conductivityModelClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse