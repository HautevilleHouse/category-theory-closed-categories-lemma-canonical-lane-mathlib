import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure ClosedCategoryObject where
  carrier : Type u
  internalHom : carrier -> carrier -> carrier
  tensorProduct : carrier -> carrier -> carrier
  unitObject : carrier
  adjunctionData : Prop

structure AdmissibleClass where
  object : ClosedCategoryObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ClosedCategoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse