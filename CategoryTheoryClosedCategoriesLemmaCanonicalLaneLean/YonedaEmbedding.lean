import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.ClosedMonoidalStructure

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [CategoryStruct.{u,u} C] where
  yonedaFunctor : C → (Cᵒᵖ → Type u)
  fullyFaithful : Prop
  preservesLimits : Prop
  fullyFaithfulTerm : fullyFaithful
  preservesLimitsTerm : preservesLimits

def YonedaEmbeddingClosed (Y : YonedaEmbedding (AdmissibleClass.object : Type u)) : Prop :=
  Y.fullyFaithful ∧ Y.preservesLimits

theorem yoneda_embedding_closed_from_terms (Y : YonedaEmbedding (AdmissibleClass.object : Type u)) :
    YonedaEmbeddingClosed Y := by
  exact And.intro Y.fullyFaithfulTerm Y.preservesLimitsTerm

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse