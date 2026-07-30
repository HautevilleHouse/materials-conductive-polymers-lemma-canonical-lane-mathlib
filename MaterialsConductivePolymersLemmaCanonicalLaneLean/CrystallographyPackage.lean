import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  bravaisLattice : Type v
  symmetryGroup : Type w
  basisVectors : Prop
  reciprocalVectors : Prop
  brillouinZone : Prop
  crystalSystemClassified : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  basisVectorsClosed : C.basisVectors
  reciprocalVectorsClosed : C.reciprocalVectors
  brillouinZoneClosed : C.brillouinZone
  crystalSystemClassifiedClosed : C.crystalSystemClassified

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.basisVectors ∧ C.reciprocalVectors ∧ C.brillouinZone ∧ C.crystalSystemClassified

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.basisVectorsClosed (And.intro E.reciprocalVectorsClosed (And.intro E.brillouinZoneClosed E.crystalSystemClassifiedClosed))

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse