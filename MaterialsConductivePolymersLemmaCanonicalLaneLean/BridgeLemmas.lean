import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | PolymerObject P => ConductivePolymerClosed P
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  unfold bridgeClosed
  -- The object is admitted, so we have a term of PolymerObject? Determinable from construction
  sorry

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse
