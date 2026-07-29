import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean

structure AdjointPair (F G : Type) where
  unit : Prop
  counit : Prop
  triangleIdentities : Prop

def adjointClosed (A : AdjointPair F G) : Prop :=
  A.unit ∧ A.counit ∧ A.triangleIdentities

theorem adjoint_closed_from_evidence (A : AdjointPair F G)
    (h1 : A.unit) (h2 : A.counit) (h3 : A.triangleIdentities) :
    adjointClosed A := by
  exact And.intro h1 (And.intro h2 h3)

end CategoryTheoryClosedCategoriesLemmaCanonicalLaneLean
end HautevilleHouse