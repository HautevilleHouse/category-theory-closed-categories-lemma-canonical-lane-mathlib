import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure ClosedCategoryStructure where
  tensorProduct : Type u -> Type u -> Type u
  internalHom : Type u -> Type u -> Type u
  unit : Type u
  adjunction : (internalHom A B) ≅ (A ⊗ B)
  coherenceConditions : Prop

theorem closed_structure_closed (C : ClosedCategoryStructure) : Prop :=
  C.coherenceConditions

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse