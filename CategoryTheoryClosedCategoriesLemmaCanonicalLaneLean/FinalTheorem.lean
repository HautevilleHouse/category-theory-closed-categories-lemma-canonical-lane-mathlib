import canonicalLaneMathlib.AdmissibleClass
import CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.ClosedCategoriesPackage
import CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.YonedaEmbeddingPackage

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

def ConstrainedClosedCategoriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_closed_categories_endgame (A : AdmissibleClass) :
    ConstrainedClosedCategoriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse