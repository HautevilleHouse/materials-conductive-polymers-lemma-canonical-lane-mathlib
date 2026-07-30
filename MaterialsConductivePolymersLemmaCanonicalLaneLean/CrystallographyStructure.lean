import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure CrystallographyPackage where
  latticeType : Type u
  unitCellVolume : Float
  spaceGroup : String
  bravaisLatticeClassified : Prop
  unitCellVolumeComputed : Prop
  spaceGroupDetermined : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  unitCellVolumeComputedClosed : C.unitCellVolumeComputed
  spaceGroupDeterminedClosed : C.spaceGroupDetermined

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeClassified ∧ C.unitCellVolumeComputed ∧ C.spaceGroupDetermined

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeClassifiedClosed (And.intro E.unitCellVolumeComputedClosed E.spaceGroupDeterminedClosed)

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse