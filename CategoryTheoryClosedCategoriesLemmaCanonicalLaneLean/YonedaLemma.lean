import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure YonedaLemmaPackage where
  embeddingFullFaithful : Prop
  naturalityIsomorphism : Prop
  universalProperty : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  embeddingFullFaithfulClosed : Y.embeddingFullFaithful
  naturalityIsomorphismClosed : Y.naturalityIsomorphism
  universalPropertyClosed : Y.universalProperty

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.embeddingFullFaithful ∧ Y.naturalityIsomorphism ∧ Y.universalProperty

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.embeddingFullFaithfulClosed
    (And.intro E.naturalityIsomorphismClosed E.universalPropertyClosed)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse