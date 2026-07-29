import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.AdjointFunctor

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure LimitsAndColimits (C : Type u) [CategoryStruct.{u,u} C] where
  hasLimits : Prop
  hasColimits : Prop
  limitPreserving : (∀ (F : Functor (Discrete ℕ) C), LimitCone F) → Prop
  colimitPreserving : (∀ (F : Functor (Discrete ℕ) C), ColimitCone F) → Prop
  hasLimitsTerm : hasLimits
  hasColimitsTerm : hasColimits

def LimitsAndColimitsClosed (L : LimitsAndColimits (AdmissibleClass.object : Type u)) : Prop :=
  L.hasLimits ∧ L.hasColimits

theorem limits_and_colimits_closed_from_terms (L : LimitsAndColimits (AdmissibleClass.object : Type u)) :
    LimitsAndColimitsClosed L := by
  exact And.intro L.hasLimitsTerm L.hasColimitsTerm

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse