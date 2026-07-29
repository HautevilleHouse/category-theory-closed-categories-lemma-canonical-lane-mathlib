import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure YonedaEmbeddingPackage where
  category : Type u
  homObject : Type v
  yonedaMap : Prop
  fullyFaithfulness : Prop
  presheafRepresentability : Prop

structure YonedaEmbeddingEvidence (Y : YonedaEmbeddingPackage) where
  yonedaMapClosed : Y.yonedaMap
  fullyFaithfulnessClosed : Y.fullyFaithfulness
  presheafRepresentabilityClosed : Y.presheafRepresentability

def YonedaEmbeddingClosed (Y : YonedaEmbeddingPackage) : Prop :=
  Y.yonedaMap ∧ Y.fullyFaithfulness ∧ Y.presheafRepresentability

theorem yoneda_embedding_closed_from_evidence
    (Y : YonedaEmbeddingPackage) (E : YonedaEmbeddingEvidence Y) :
    YonedaEmbeddingClosed Y := by
  exact And.intro E.yonedaMapClosed
    (And.intro E.fullyFaithfulnessClosed E.presheafRepresentabilityClosed)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse