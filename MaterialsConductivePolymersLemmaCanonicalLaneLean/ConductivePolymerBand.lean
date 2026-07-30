import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure ConductivePolymerBandPackage where
  polymerChainGeometry : Type u
  dopingLevel : Float
  bandGap : Float
  conductivityModel : Type v
  bandStructureComputed : Prop
  conductivityModelValidated : Prop
  dopingDependenceCaptured : Prop

structure ConductivePolymerBandEvidence (C : ConductivePolymerBandPackage) where
  bandStructureComputedClosed : C.bandStructureComputed
  conductivityModelValidatedClosed : C.conductivityModelValidated
  dopingDependenceCapturedClosed : C.dopingDependenceCaptured

def ConductivePolymerBandClosed (C : ConductivePolymerBandPackage) : Prop :=
  C.bandStructureComputed ∧ C.conductivityModelValidated ∧ C.dopingDependenceCaptured

theorem conductive_polymer_band_closed_from_evidence (C : ConductivePolymerBandPackage) (E : ConductivePolymerBandEvidence C) :
    ConductivePolymerBandClosed C := by
  exact And.intro E.bandStructureComputedClosed (And.intro E.conductivityModelValidatedClosed E.dopingDependenceCapturedClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse