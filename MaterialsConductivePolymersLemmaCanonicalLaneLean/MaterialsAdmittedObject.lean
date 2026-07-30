import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsConductivePolymersLemmaCanonicalLaneLean

structure MaterialsAdmittedObject where
  materialSystem : Type u
  propertySatisfied : Prop
  conclusion : propertySatisfied

def MaterialsWitnessClosed (O : MaterialsAdmittedObject) : Prop :=
  O.propertySatisfied

end MaterialsConductivePolymersLemmaCanonicalLaneLean
end HautevilleHouse